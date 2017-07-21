## Outlet Collection
어떤 outlet들에 똑같은 작업을 해주어야 할 경우 
필요한 outlet을 선택해서 묶을 수 있는 outletcollection을 사용

## Animation
동영상에서의 슬라이더와 같이 time interval마다 업데이트를 하는 뷰의 경우
부드러운 효과를 위해
1. time interval을 줄이거나
2. animation을 사용할 수 있다
1번의 경우 interval을 줄이면 줄일수록 오버헤드가 발생하여 배터리 소모 속도가 빨라지고
2번의 경우 duration을 계산하는 것이 복잡할 수 있다

이러한 tradeoff를 잘 생각해서 두가지 중 하나를 쓰는데 보통은 interval을 0.1 - 0.5정도로 설정하여 쓴다

## Observer
이전에는 selector를 사용하는 문법을 자주 썼으나 요즘은 그냥 observer내에 block을 쓴다

## Layer
모든 UIView는 CALayer 객체인 layer 프로퍼티를 가지고 있다.

렌더링, 레이아웃, 애니메이션 등을 관리한다.

따라서 UIView의 appearance를 customize하고 싶을 땐 layer를 이용한다.

## GCD
Grand Central Dispatch
개발자가 쓰레드 풀에 접근할 수 있도록 하는 기술
- UIKit내에 정의된 작업은 메인에서 처리해야함
- 네트워킹/비동기 작업은 메인 이외의 쓰레드로 옮겨 진행하는 것이 좋다
- 참고하면 좋은 책: [Pro IOS Apps Performance Optimization](http://book.naver.com/bookdb/book_detail.nhn?bid=6958808)

## URL Encoding
URI에서 사용되는 예약문자/비예약문자를 구분하기 위한 문자 인코딩 방법
퍼센트 인코딩이라고도 한다.
https://ko.wikipedia.org/wiki/%ED%8D%BC%EC%84%BC%ED%8A%B8_%EC%9D%B8%EC%BD%94%EB%94%A9

