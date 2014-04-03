﻿<!DOCTYPE HTML>
<html lang="en">
<head>
<title>邓宜桐个人博客背景</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
 <meta http-equiv="refresh" content="5;url=/Wed/Default.aspx"/>
<style type="text/css">
body {
	background-color:#000044;
	background:url(/Wed/images/bg.jpg) repeat-x;
	margin:0px;
	overflow:hidden;
}
a {
	color:#0078ff;
}
#clock{padding:10px;color:white;}
</style>
</head>
<body onLoad="init()">
<p id="clock"></p>
<script type="text/javascript" src="/Wed/js/ThreeCanvas.js"></script>
<script type="text/javascript" src="/Wed/js/Snow.js"></script>
    <script type="text/javascript" src="Share/js/jquery-1.9.1.min.js"></script>
<script>

    var SCREEN_WIDTH = window.innerWidth;
    var SCREEN_HEIGHT = window.innerHeight;

    var container;

    var particle;

    var camera;
    var scene;
    var renderer;

    var mouseX = 0;
    var mouseY = 0;

    var windowHalfX = window.innerWidth / 2;
    var windowHalfY = window.innerHeight / 2;

    var particles = [];
    var particleImage = new Image();//THREE.ImageUtils.loadTexture( "img/ParticleSmoke.png" );
    particleImage.src = '/Wed/images/ParticleSmoke.png';



    function init() {

        container = document.createElement('div');
        document.body.appendChild(container);

        camera = new THREE.PerspectiveCamera(75, SCREEN_WIDTH / SCREEN_HEIGHT, 1, 10000);
        camera.position.z = 1000;

        scene = new THREE.Scene();
        scene.add(camera);

        renderer = new THREE.CanvasRenderer();
        renderer.setSize(SCREEN_WIDTH, SCREEN_HEIGHT);
        var material = new THREE.ParticleBasicMaterial({ map: new THREE.Texture(particleImage) });

        for (var i = 0; i < 500; i++) {

            particle = new Particle3D(material);
            particle.position.x = Math.random() * 2000 - 1000;
            particle.position.y = Math.random() * 2000 - 1000;
            particle.position.z = Math.random() * 2000 - 1000;
            particle.scale.x = particle.scale.y = 1;
            scene.add(particle);

            particles.push(particle);
        }

        container.appendChild(renderer.domElement);


        document.addEventListener('mousemove', onDocumentMouseMove, false);
        document.addEventListener('touchstart', onDocumentTouchStart, false);
        document.addEventListener('touchmove', onDocumentTouchMove, false);

        setInterval(loop, 1000 / 60);

    }

    function onDocumentMouseMove(event) {

        mouseX = event.clientX - windowHalfX;
        mouseY = event.clientY - windowHalfY;
    }

    function onDocumentTouchStart(event) {

        if (event.touches.length == 1) {

            event.preventDefault();

            mouseX = event.touches[0].pageX - windowHalfX;
            mouseY = event.touches[0].pageY - windowHalfY;
        }
    }

    function onDocumentTouchMove(event) {

        if (event.touches.length == 1) {

            event.preventDefault();

            mouseX = event.touches[0].pageX - windowHalfX;
            mouseY = event.touches[0].pageY - windowHalfY;
        }
    }

    //

    function loop() {

        for (var i = 0; i < particles.length; i++) {

            var particle = particles[i];
            particle.updatePhysics();

            with (particle.position) {
                if (y < -1000) y += 2000;
                if (x > 1000) x -= 2000;
                else if (x < -1000) x += 2000;
                if (z > 1000) z -= 2000;
                else if (z < -1000) z += 2000;
            }
        }

        camera.position.x += (mouseX - camera.position.x) * 0.05;
        camera.position.y += (-mouseY - camera.position.y) * 0.05;
        camera.lookAt(scene.position);

        renderer.render(scene, camera);


    }

		</script>
</body>
</html>