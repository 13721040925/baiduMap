<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>还有神马比安全/环保更重要？青城山试驾沃尔沃XC60</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1,user-scalable=no">
    <script type="text/javascript" src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Wc0XClzwEmr98XwgzQgcSUOle24Ity7L"></script>
    <!--<script type="text/javascript"
            src="https://api.map.baidu.com/api?v=2.0&ak=Wc0XClzwEmr98XwgzQgcSUOle24Ity7L"></script>-->
    <!--<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>-->
    <script type="text/javascript"
            src="https://3gimg.qq.com/lightmap/components/geolocation/geolocation.min.js"></script>
</head>
<body>
<script type="text/javascript">
	var options = {timeout: 5000, failTipFlag: true};
    var geolocation = new qq.maps.Geolocation("7JLBZ-YRZKJ-Q4HFE-FX7ZZ-A76AT-C5BPV", "superlocation");
    geolocation.getLocation(function (result) {
        if (result.type == 'ip') {
        	alert("ip定位");
            alert(r.point.lng);
                alert(r.point.lat);
                alert(r.address.city);
                alert(r.address.province);
                alert(r.address.district);
                alert(r.address.street);
                alert(r.address.streetNumber);
                alert(r.accuracy);
            
        } else {
        	alert("url定位");
            alert(r.point.lng);
                alert(r.point.lat);
                alert(r.address.city);
                alert(r.address.province);
                alert(r.address.district);
                alert(r.address.street);
                alert(r.address.streetNumber);
                alert(r.accuracy);
            
      }
    }, function () {
        // ipLocation();
        var geolocation = new BMap.Geolocation();
        geolocation.getCurrentPosition(function (r) {
            if (this.getStatus() == BMAP_STATUS_SUCCESS) {
            	alert("安卓定位");
                alert(r.point.lng);
                alert(r.point.lat);
                alert(r.address.city);
                alert(r.address.province);
                alert(r.address.district);
                alert(r.address.street);
                alert(r.address.streetNumber);
                alert(r.accuracy);
            } else {
                ipLocation();
            }
        }, {enableHighAccuracy: true});

    }, options);

    function ipLocation() {
        var myCity = new BMap.LocalCity();
        myCity.get(function (result) {
            var cityName = result.name;
            alert("ip:" + JSON.stringify(result));
            alert(result.center.lng);
            alert(result.center.lat);
            alert(cityName);
        });
    }
</script>
</body>
</html>