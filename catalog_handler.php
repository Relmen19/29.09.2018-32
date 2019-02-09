<?php

    $output = [

        'products' => [],
        'paginationInfo' => [

            'nowPage' => 3,
            'countPage' => 5

        ]

    ];

    $link = mysqli_connect( 'localhost', 'root', '', '29092018_2_3project' );
    mysqli_set_charset( $link, 'utf8' );

    $limit = 4;
    $page = 1;
    
    if ( isset( $_GET['page'] ) ){
        $page = $_GET['page'];
    };

    $from_num = ($page - 1) * $limit;

    $sql_count = "SELECT COUNT(id) as len FROM products";
    $resulte_count = mysqli_query( $link, $sql_count );

    $count_row = mysqli_fetch_assoc($resulte_count)['len'];
    $count_page = ceil( $count_row / $limit );

    $output['paginationInfo']['countPage'] = $count_page;
    $output['paginationInfo']['nowtPage'] = $page;

    $sql = "SELECT * FROM products limit {$from_num}, {$limit}";
    $result = mysqli_query( $link, $sql );

    while ( $row = mysqli_fetch_assoc($result) ){
        $output['products'][] = $row;
    };

    echo json_encode( $output );
