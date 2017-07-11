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
