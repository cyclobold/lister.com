<?php 

$privileges = [

		'can_create_user' => [

			'category' => 'user',
			'allowed_roles' => [2]
		],

		'can_update_user' => [

			'category' => 'user',
			'allowed_roles' => [2]
		],

		'can_delete_user' => [

			'category' => 'user',
			'allowed_roles' => [2]
		],
		'can_create_blog' => [
			'category' => 'blog',
			'allowed_roles' => [1, 2]

		],
		'can_update_blog' => [
			'category' => 'blog',
			'allowed_roles' => [1,2]

		],
		'can_delete_blog' => [
			'category' => 'blog',
			'allowed_roles' => [2]

		]

];

