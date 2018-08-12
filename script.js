// SNS 공유 버튼
function shareSNS(type) {
  if(type === "facebook") {
    window.open("http://www.facebook.com/sharer/sharer.php?u=toonraon.cf","_blank");
  } else if(type === "twitter") {
    window.open("https://twitter.com/intent/tweet?text=ToonRaon 싸지방 접속기&url=toonraon.cf","_blank");
  } else if(type === "googleplus") {
    window.open("https://plus.google.com/share?url=toonraon.cf","_blank");
  } else if(type === "naverblog") {
    window.open("http://blog.naver.com/openapi/share?url=toonraon.cf","_blank");
  }
}

// 부트스트랩 툴팁 사용하기
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

// 최신 버전 접속기 다운로드 버튼 링크 설정 (https 통신을 해야하기 때문에 구 버전 브라우저에서 실행이 불가능하다.... ㅠㅠㅠ)
function GetLatestReleaseDownloadURL() {
  $.getJSON("https://api.github.com/repos/ToonRaon/ToonRaonConnector/releases/latest").done(function(release) {
    var asset = release.assets[0];
    // var downloadCount = 0;
    // for (var i = 0; i < release.assets.length; i++) {
    //   downloadCount += release.assets[i].download_count;
    // }
    // var oneHour = 60 * 60 * 1000;
    // var oneDay = 24 * oneHour;
    // var dateDiff = new Date() - new Date(asset.updated_at);
    // var timeAgo;
    // if (dateDiff < oneDay) {
    //   timeAgo = (dateDiff / oneHour).toFixed(1) + " hours ago";
    // } else {
    //   timeAgo = (dateDiff / oneDay).toFixed(1) + " days ago";
    // }
    // var releaseInfo = release.name + " was updated " + timeAgo + " and downloaded " + downloadCount.toLocaleString() + " times.";
    $(".download-lasted-version").attr("href", asset.browser_download_url);
    // $(".release-info").text(releaseInfo);
    // $(".release-info").fadeIn("slow");
  });
}

// GetLatestReleaseDownloadURL();