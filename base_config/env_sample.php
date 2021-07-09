<?php
return [
    'backend' => [
        'frontName' => 'admin'
    ],
    'install' => [
        'date' => 'Fri, 20 Nov 2015 08:11:26 +0000'
    ],
    'crypt' => [
        'key' => '1111cbd5f0ce9111173e3f0ad1561111'
    ],
    'session' => [
        'save' => 'files'
    ],
    'db' => [
        'table_prefix' => '',
        'connection' => [
            'default' => [
                'host' => 'db',
                'dbname' => 'db_name',
                'username' => 'db',
                'password' => 'db',
                'active' => '1'
            ]
        ]
    ],
    'resource' => [
        'default_setup' => [
            'connection' => 'default'
        ]
    ],
    'x-frame-options' => 'SAMEORIGIN',
    'MAGE_MODE' => 'developer',
    'cache_types' => [
        'config' => 1,
        'layout' => 1,
        'block_html' => 1,
        'collections' => 1,
        'reflection' => 1,
        'db_ddl' => 1,
        'eav' => 1,
        'config_integration' => 1,
        'config_integration_api' => 1,
        'full_page' => 1,
        'translate' => 1,
        'config_webservice' => 1,
        'compiled_config' => 1,
        'customer_notification' => 1,
        'target_rule' => 1,
        'ec_cache' => 1,
    ]
];
