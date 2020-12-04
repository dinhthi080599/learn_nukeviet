<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="row">
	[HEADER]
</div>
<div class="row m-0">
    <div class="col-sm-12 col-md-18 col-sm-push-6 col-md-push-6">
        <div class="pt-20 pl-20 pr-20">
            [TOP]
            {MODULE_CONTENT}
            [BOTTOM]
        </div>
    </div>
	<div class="col-sm-6 col-md-6 col-sm-pull-18 col-md-pull-18 p-0">
		[LEFT]
	</div>
</div>
<div class="row">
	[FOOTER]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->