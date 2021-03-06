﻿
 // In the following example, markers appear when the user clicks on the map.
      // Each marker is labeled with a single alphabetical character.
      var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      var labelIndex = 0;
//30.1061561, 31.3643695
      function initialize() {
          var SIB = { lat: 30.1061561, lng: 31.3643695 };
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: SIB
        });

        // This event listener calls addMarker() when the map is clicked.
        //google.maps.event.addListener(map, 'click', function(event) {
        //  addMarker(event.latLng, map);
        //});

        var contentString = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<h3 id="firstHeading" class="firstHeading">SIB - شركة شآم للوساطه التأمينيه</h3>' +
            '<div id="bodyContent">' +
            '<p>شركه مصرية مساهمة مسجله بقرار رقم (224) للهيئه العامه للرقابه الماليه بترخيص رقم (70) ,سجل تجارى 102310 بطاقه ضريبية 61614.</p>' +
            '<p dir="ltr"><b>Address:</b> 10 kamal Eldin Hussein (F2) Heliopolis – Sheraton buildings – Cairo – Egypt<br/><b>Land line:</b> 002 02 22672674  <br/>' +
            '<b>Mob:</b> 002 01200067801<br/><br/>' +
            '<a target="_blank" href="https://www.google.com/maps/place/Shaam+Insurance+Broker+Co./@30.1061561,31.3643695,17z/data=!3m1!4b1!4m5!3m4!1s0x1458166d90e400a1:0x3ce8a3ab1052f1db!8m2!3d30.1061561!4d31.3665582?hl=en-US">'+
            'View SIB on Google Maps</a></p>'+
            '</div>' +
            '</div>';
        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });

        var marker = new google.maps.Marker({
            position: SIB,
            map: map,
            icon: 'img/map.png',
            title: 'SIB - شركة شآم للوساطه التأمينيه'
        });
        marker.addListener('click', function () {
            infowindow.open(map, marker);
        });

      }

      google.maps.event.addDomListener(window, 'load', initialize);
