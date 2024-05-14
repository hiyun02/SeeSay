// 음성 인식 API 지원 여부 확인
if ('webkitSpeechRecognition' in window) {
    // 음성 인식 객체 생성
    var recognition = new webkitSpeechRecognition();
    // 음성 인식 옵션 설정
    recognition.continuous = false; // 연속적인 음성 인식을 사용하지 않음
    recognition.lang = 'en-US'; // 인식할 언어 설정 (여기서는 영어로 설정되어 있음)
    // 음성 인식 시작 시 실행되는 이벤트 핸들러
    recognition.onstart = function() {
      console.log('Speech recognition started...');
    };
    // 음성 인식 종료 시 실행되는 이벤트 핸들러
    recognition.onend = function() {
      console.log('Speech recognition ended.');
    };
    // 음성 인식 결과 수신 시 실행되는 이벤트 핸들러
    recognition.onresult = function(event) {
      // 결과의 첫 번째 항목 추출
      var result = event.results[0][0].transcript;
      console.log('Recognition result:', result);
      return result;
    };
    // 음성 인식 오류 시 실행되는 이벤트 핸들러
    recognition.onerror = function(event) {
      console.error('Speech recognition error:', event.error);
    };
    // 음성 인식 시작
    function startRecognition() {
      recognition.start();
      console.log('Speech recognition started...');
    }
    // 음성 인식 중지
    function stopRecognition() {
      recognition.stop();
      console.log('Speech recognition stopped.');
    }
  } else {
    // 브라우저에서 음성 지원이 안될 경우
    console.error('Speech recognition is not supported in this browser.');
  }