// ie에서 다운로드를 시도할 경우 return false
function downloadOnIE(msg) {
  return true; // test code
  
  // ie
  if(navigator.appVersion.indexOf("MSIE")!=-1 || (!!window.MSInputMethodContext && !!document.documentMode)) {
    if(msg) alert("인터넷 익스플로러에서는 그냥 다운로드가 되지 않습니다.\n\n우클릭 - 다른 이름으로 대상 저장 - 파일 이름 제일 뒤에 '.bat'을 붙여서 저장해주세요.\n\n(그냥 저장하면 파일 확장자가 .man이라는 이상한 확장자로 저장되어 실행되지 않습니다.)");

    return false; // 다운로드 비허용
  } else { // ie가 아닐 때
    return true; // 다운로드 허용
  }
}

function connectorDownload() {
  if(downloadOnIE(false)) { //ie가 아닐 때
    return window.location.href="./prev-versions/ROKA_Google_Youtube_v2.8.zip"; // 다운로드 링크 바꿀 때 아래 숨긴 텍스트에 연결된 ie용 링크도 바꿔야합니다.
  } else { // ie 일 때
    alert("인터넷 익스플로러는 직접 다운로드가 불가능합니다.");
    
    var btn = document.getElementById("downloadButton");
    btn.style.display = "none"; // 버튼 사라짐
    
    var hiddenText = document.getElementById("hiddenText");
    hiddenText.style.display = "block";
  }
}