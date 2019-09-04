<?php

namespace Erp\Http\Controllers\Apps;

use Illuminate\Http\Request;
use Erp\Http\Controllers\Controller;
use Erp\Models\User;
use Erp\Models\Warehouse;
use Erp\Models\Uker;
use Erp\Models\Status;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Hash;
use DB;
use Auth;

class UserManagementController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:Can View Data');
         $this->middleware('permission:Can Create Data', ['only' => ['create','store']]);
         $this->middleware('permission:Can Edit Data', ['only' => ['edit','update']]);
         $this->middleware('permission:Can Delete Data', ['only' => ['destroy']]);
    }

    public function userIndex()
    {
        $users = User::orderBy('name','asc')
                        ->get();
        $ukers = Uker::pluck('name','id')->toArray();
        $warehouses = Warehouse::pluck('name','id')->toArray();
        $roles = Role::pluck('name','name')->all();
        
        return view('apps.pages.users',compact('users','ukers','warehouses','roles'));
    }

    public function userProfile()
    {
        $user = Auth::user();
        $units = Uker::pluck('name','id')->toArray();
        $warehouses = Warehouse::pluck('name','id')->toArray();
        return view('apps.shows.userProfile',compact('user','units','warehouses'));
    }

    public function userStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:users,name',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'roles' => 'required',
            'uker_id' => 'required',
            'warehouse_id' => 'required',
        ]);

        $input = $request->all();
        $input['password'] = Hash::make($input['password']);
        $user = User::create($input);
        $user->assignRole($request->input('roles'));
        $log = 'User '.($user->name).' Berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'User '.($user->name).' Berhasil disimpan',
            'alert-type' => 'success'
        );

        return redirect()->route('user.index')->with($notification);
    }

    public function userShow($id)
    {
        $user = User::find($id);
        
        return view('apps.show.users',compact('user'))->renderSections()['content'];
    }

    public function userEdit($id)
    {
        $user = User::find($id);
        $roles = Role::pluck('name','name')->all();
        $userRole = $user->roles->pluck('name','name')->all();
        $ukers = Uker::pluck('name','id')->toArray();
        $warehouses = Warehouse::pluck('name','id')->toArray();
        $status = Status::where('function','Data')->pluck('name','id')->toArray();
       
        return view('apps.edit.users',compact('user','roles','userRole','ukers','warehouses','status'))->renderSections()['content'];
    }

    public function userUpdate(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required|unique:users,name,'.$id,
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'same:confirm-password',
            'roles' => 'required',
            'uker_id' => 'required',
            'warehouse_id' => 'required',
        ]);

        $input = $request->all();       
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = array_except($input,array('password'));    
        }
        $user = User::find($id);
        $user->update($input);
        DB::table('model_has_roles')->where('model_id',$id)->delete();        
        $user->assignRole($request->input('roles'));

        $log = 'User '.($user->name).' Berhasil diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'User '.($user->name).' Berhasil diubah',
            'alert-type' => 'success'
        );

        return redirect()->route('user.index')->with($notification);
    }

    public function updateAvatar(Request $request){

        $request->validate([
            'avatar' => 'required|image|mimes:jpeg,png,jpg,JPG,gif,svg|dimensions:width=150,length=150',
        ]);

        $user = Auth::user();

        $avatarName = $user->id.'_avatar'.time().'.'.request()->avatar->getClientOriginalExtension();

        $request->avatar->storeAs('public/avatars',$avatarName);

        $user->avatar = $avatarName;
        $user->save(); 

        $log = 'User Picture '.($user->name).' Berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'User Picture '.($user->name).' Berhasil disimpan',
            'alert-type' => 'success'
        );

        return back()->with($notification);
    }

    public function updatePassword(Request $request)
    {
        $request->validate([
            'password' => 'same:confirm-password',
        ]);

        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = array_except($input,array('password'));    
        }

        $user = Auth::user();
        $user->update($input);

        $log = 'Password User '.($user->name).' Berhasil diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'User '.($user->name).' Berhasil diubah',
            'alert-type' => 'success'
        );
        return back()
            ->with($notification);
    }

    public function userDestroy($id)
    {
        $input = ['status' => 'e1669c7f-182a-48bc-8170-dadcded0310a'];
        $user = User::find($id);
        $user->update($input);
        
        $log = 'User '.($user->name).' Suspended';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'User '.($user->name).' Suspended',
            'alert-type' => 'success'
        );
        return redirect()->route('user.index')
                        ->with($notification);
    }

    public function roleIndex(Request $request)
    {
        $permission = Permission::get();
        $roles = Role::orderBy('id','ASC')->get();
        return view('apps.pages.roles',compact('roles','permission'));
    } 

    public function roleStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:roles,name',
            'permission' => 'required',
        ]);


        $role = Role::create(['name' => $request->input('name')]);
        $role->syncPermissions($request->input('permission'));
        $log = 'Hak Akses '.($role->name).' berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Hak Akses '.($role->name).' berhasil disimpan',
            'alert-type' => 'success'
        ); 

        return redirect()->route('role.index')
                        ->with($notification);
    }

    public function roleShow($id)
    {
        $role = Role::find($id);
        $rolePermissions = Permission::join("role_has_permissions","role_has_permissions.permission_id","=","permissions.id")
            ->where("role_has_permissions.role_id",$id)
            ->get();


        return view('apps.show.roles',compact('role','rolePermissions'))->renderSections()['content'];
    }

    public function roleEdit($id)
    {
        $role = Role::find($id);
        $permission = Permission::get();
        $rolePermissions = DB::table("role_has_permissions")->where("role_has_permissions.role_id",$id)
            ->pluck('role_has_permissions.permission_id','role_has_permissions.permission_id')
            ->all();


        return view('apps.edit.roles',compact('role','permission','rolePermissions'))->renderSections()['content'];
    }

    public function roleUpdate(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'permission' => 'required',
        ]);


        $role = Role::find($id);
        $role->name = $request->input('name');
        $role->save();


        $role->syncPermissions($request->input('permission'));
        $log = 'Hak Akses '.($role->name).' berhasil diubah';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Hak Akses '.($role->name).' berhasil diubah',
            'alert-type' => 'success'
        ); 

        return redirect()->route('role.index')
                        ->with($notification);
    }

    public function roleDestroy($id)
    {
        DB::table("roles")->where('id',$id)->delete();
        $log = 'Hak Akses '.($role->name).' berhasil disimpan';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Hak Akses '.($role->name).' berhasil disimpan',
            'alert-type' => 'success'
        ); 
        return redirect()->route('role.index')
                        ->with($notification);
    }

    public function ukerIndex()
    {
        $units = Uker::orderBy('name','ASC')->get();
        return view('apps.pages.units',compact('units'));
    }

    public function ukerStore(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:ukers,name',
        ]);

        $input = [
            'name' => $request->input('name'),
        ];

        $data = Uker::create($input);
        $log = 'Work Unit '.($data->name).' Created';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Work Unit '.($data->name).' Created',
            'alert-type' => 'success'
        );

        return redirect()->route('uker.index')->with($notification);  
    }

    public function ukerEdit($id)
    {
        $data = Uker::find($id);
        return view('apps.edit.units',compact('data'))->renderSections()['content'];
    }
    public function ukerUpdate(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required|unique:ukers,name',
        ]);

        $input = $request->all();
        $data = Uker::find($id);
        $log = 'Work Unit '.($data->name).' Edited';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Work Unit '.($data->name).' Edited',
            'alert-type' => 'success'
        );
        $data->update($input);

        return redirect()->route('uker.index')->with($notification);
    }

    public function ukerDestroy($id)
    {
        $data = Uker::find($id);
        $log = 'Work Unit '.($data->name).' Deleted';
         \LogActivity::addToLog($log);
        $notification = array (
            'message' => 'Work Unit '.($data->name).' Deleted',
            'alert-type' => 'success'
        );
        $data->delete();
        return redirect()->route('uker.index')->with($notification);
    }
}
