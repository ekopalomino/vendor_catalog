$(document).on('ajaxComplete ready', function () {
    $('.modalMd').off('click').on('click', function () {
        $('#modalMdContent').load($(this).attr('value'));
        $('#modalMdTitle').html($(this).attr('title'));
    });
});
$(document).on('ajaxComplete ready', function () {
    $('.modalLg').off('click').on('click', function () {
        $('#modalLgContent').load($(this).attr('value'));
        $('#modalLgTitle').html($(this).attr('title'));
    });
});