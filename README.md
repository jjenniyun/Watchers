# Watchers

### 주제: 딥러닝을 활용한 CCTV 영상 분석 기반의 아동 모니터링 서비스

1.프로젝트 소개 및 기능 소개
   - 딥러닝을 활용하여 학습시킨 모델을 실시간 CCTV 영상에 적용시켜 사용자에게 폭행 검출, 입·출입 관리 서비스를 제공합니다.
   - 폭행 감지시 기록 및 알람으로 확인에 드는 시간을 절약할 수 있습니다.
   - 커뮤니티 제공으로 근무자, 관리자 간의 소통이 가능합니다.
   - 관리자 페이지로 근무자들을 관리하며 수정, 삭제 등을 할 수 있습니다.
   - Spring Framework로 웹 페이지를 구성하였고 Python을 활용하여 AI Hub, kaggle의 Datasets을 학습시켰습니다. OpenCV를 활용하여 실시간 영상을 구현했고 Javascript, Bootstrap 활용하여 시각화하였습니다.

2. <내 역할>

   1) Spring 웹 페이지 기능 구현(Paging과 검색 기능)
   2) Flask 활용하여 딥러닝으로 학습한 폭행 감지, 입·출입 관리 모델(AI 모델)을 Spring과 연동하여 실시간 영상 띄우기
       - Flask : Python Opencv 화면 구현
       - Spring : JSP 페이지 연동
   3) 웹 서버 기능 연동
       - Spring Framework을 활용한 웹 서버 기능 연동
       - MyBATIS를 활용한 MySQL DB 연동
