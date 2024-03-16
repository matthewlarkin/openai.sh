select 'dynamic' as component, sqlpage.read_file_as_text('assets/data/shell.json') as properties;

select 
'breadcrumb' as component;

	select 
		'Home' as title,
		'/'    as link;
	select 
		'Assistants' as title,
		'/assistants.sql' as link;
	select
		true as active,
		title as title from assistants where id = $id;

select 'title' as component,
	title as contents
	from assistants where id = $id;

select 'text' as component,
	content as contents_md
	from assistants where id = $id;

select
	'button' as component;
select
	'/ui/views/assistant.edit.sql?id=' || $id     as link,
	'azure' as outline,
	'Edit'  as title,
	'edit'  as icon;
select
	'/ui/views/assistant.delete.sql?id=' || $id      as link,
	'danger' as outline,
	'Delete' as title,
	'trash'  as icon;


select 'alert' as component,
	'Updated!' as title,
	true as dismissible,
	'check' as icon,
	'green' as color
	where $message = 'updated';