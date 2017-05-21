<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Design online</title>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css" />
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/menuscript.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/three.min.js"></script>
</head>
<body>
	<div class="header-container">
		<div class="row">
			<img src="/SpringMvcJdbcTemplate/resources/images/9874_logo_03.png" style="width: 200px; height: 100px">
			<ul id="nav" class="menuHeader">
		        <li><a href="${pageContext.request.contextPath}/">Trang chủ</a>
		        </li>
		        <li><a href="#">Giới thiệu</a>
		        </li>
		        <li><a href="#">Sản phẩm</a>
		            <ul>
		                <li><a href="#">Tủ</a></li>
		                <li><a href="#">Ghế</a></li>
		                <li><a href="#">Bàn ăn</a></li>
		            </ul>
		        </li>
		        <li><a href="${pageContext.request.contextPath}/design-online">Thiết kế online</a></li>
		        <li><a href="#">Tin tức</a></li>
		        <li><a href="#">Liên hệ</a></li>
		    </ul>
	    </div>
	</div>
	<div class="designOnline" id="bodyWrapper">
	    <script src="${pageContext.request.contextPath}/resources/js/OrbitControls.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/JDLoader.min.js"></script>
	    <script>
		    var scene, camera, renderer;
		    var geometry, material, mesh;
	
		    init();
		    animate();
	
		    function init() {
				var width = $("#bodyWrapper").width();
				var height = $("#bodyWrapper").height();
		    	scene = new THREE.Scene();
	
		    	camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 1, 10000 );
		    	camera.position.z = 1000;
	
		    	geometry = new THREE.BoxGeometry( 200, 200, 200 );
		    	material = new THREE.MeshBasicMaterial( { color: 0xff0000, wireframe: true } );
	
		    	mesh = new THREE.Mesh( geometry, material );
		    	scene.add( mesh );
	
		    	renderer = new THREE.WebGLRenderer();
		    	renderer.setSize( width, height );
	
		    	$("#bodyWrapper").append( renderer.domElement );
	
		    }
	
		    function animate() {
	
		    	requestAnimationFrame( animate );
	
		    	mesh.rotation.x += 0.01;
		    	mesh.rotation.y += 0.02;
	
		    	renderer.render( scene, camera );
	
		    }
	        function onWindowResize()
	        {
	            if (camera)
	            {
	              camera.aspect = window.innerWidth / window.innerHeight;
	              camera.updateProjectionMatrix();
	            }
	            renderer.setSize(window.innerWidth, window.innerHeight);
	        }
	
	    </script>
	</div>
</body>
</html>