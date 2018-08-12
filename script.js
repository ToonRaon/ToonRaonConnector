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