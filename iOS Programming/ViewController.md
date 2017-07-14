화면을 표시하기 전에 하위 뷰에 추가적인 초기화/설정이 필요한 경우:

1)앱을 실행하는 중에 한 번만 설정해야 하는 경우 - **viewDidLoad()** 오버라이드

2)화면에 뷰 컨트롤러가 나타날 때마다 설정이 필요한 경우 - **viewWillAppear(_:)** 오버라이드

Reference https://developer.apple.com/documentation/uikit/uiviewcontroller

## UITableViewController
UITableViewDataSource - UITableView가 표시할 **행의 개수, 각 행에 표시할 데이터, UI를 만들기 위한 정보**를 가져오는 프로토콜
UITableViewDelegate - UITableView와 관련된 **이벤트** 를 다른 객체에 알릴 델리게이트 프로토콜

UITableViewController는 뷰 컨트롤러, 데이터 소스, 델리게이트의 세가지 역할을 모두 할 수 있다.

## 의존 관계 역전 원칙
1. 고수준 객체는 저수준 객체에 의존해서는 안된다. 둘 다 추상에 의존해야 한다.
2. 추상은 세부적인 것에 의존해서는 안 된다. 세부적인 것이 추상에 의존해야 한다.

Reference https://trazy.gitbooks.io/oop/content/oop-dip.html

