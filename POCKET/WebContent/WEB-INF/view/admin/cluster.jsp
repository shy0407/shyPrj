<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>��Ŀ Ŭ�����ͷ��� Ŭ���̺�Ʈ �߰��ϱ�</title>
    
</head>
<body>
<p style="margin-top:-12px">
     ����� �����͸� ���÷���
    <em class="link">
       <a href="/download/web/data/chicken.json" target="_blank">���⸦ Ŭ���ϼ���!</a>
    </em>
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27bd3a5915ae76a36c4f076bc4993248&libraries=clusterer"></script>
<script>
    var map = new daum.maps.Map(document.getElementById('map'), { // ������ ǥ���� div
        center : new daum.maps.LatLng(36.2683, 127.6358), // ������ �߽���ǥ
        level : 14 // ������ Ȯ�� ����
    });

    // ��Ŀ Ŭ�����ͷ��� �����մϴ�
    // ��Ŀ Ŭ�����ͷ��� ������ �� disableClickZoom ���� true�� �������� ���� ���
    // Ŭ������ ��Ŀ�� Ŭ������ �� Ŭ������ ��ü�� �����ϴ� ��Ŀ���� ��� �� ���̵��� ������ ������ ������ �����մϴ�
    // �� ���������� disableClickZoom ���� true�� �����Ͽ� �⺻ Ŭ�� ������ ����
    // Ŭ������ ��Ŀ�� Ŭ������ �� Ŭ���� Ŭ������ ��Ŀ�� ��ġ�� �������� ������ 1������ Ȯ���մϴ�
    var clusterer = new daum.maps.MarkerClusterer({
        map: map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü
        averageCenter: true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ����
        minLevel: 10, // Ŭ������ �� �ּ� ���� ����
        disableClickZoom: true // Ŭ������ ��Ŀ�� Ŭ������ �� ������ Ȯ����� �ʵ��� �����Ѵ�
    });

    // �����͸� �������� ���� jQuery�� ����մϴ�
    // �����͸� ������ ��Ŀ�� �����ϰ� Ŭ�����ͷ� ��ü�� �Ѱ��ݴϴ�
    $.get("/download/web/data/chicken.json", function(data) {
        // �����Ϳ��� ��ǥ ���� ������ ��Ŀ�� ǥ���մϴ�
        // ��Ŀ Ŭ�����ͷ��� ������ ��Ŀ ��ü�� ������ �� ���� ��ü�� �������� �ʽ��ϴ�
        var markers = $(data.positions).map(function(i, position) {
            return new daum.maps.Marker({
                position : new daum.maps.LatLng(position.lat, position.lng)
            });
        });

        // Ŭ�����ͷ��� ��Ŀ���� �߰��մϴ�
        clusterer.addMarkers(markers);
    });

    // ��Ŀ Ŭ�����ͷ��� Ŭ���̺�Ʈ�� ����մϴ�
    // ��Ŀ Ŭ�����ͷ��� ������ �� disableClickZoom�� true�� �������� ���� ���
    // �̺�Ʈ ��鷯�� cluster ��ü�� �Ѿ���� ���� ���� �ֽ��ϴ�
    daum.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

        // ���� ���� �������� 1���� Ȯ���� ����
        var level = map.getLevel()-1;

        // ������ Ŭ���� Ŭ�������� ��Ŀ�� ��ġ�� �������� Ȯ���մϴ�
        map.setLevel(level, {anchor: cluster.getCenter()});
    });
</script>
</body>
</html>