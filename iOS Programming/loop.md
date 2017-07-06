배열을 탐색하는 루프가 필요할 때
1. range와 for문을 이용

`let range = 0...n
 for i in range{...}`

2. 배열자체를 for문에 이용

`for s in strings{...}`

3. **인덱스가 필요한 경우** - enumerate()를 이용

`for (i, str) in strings.enumerate(){...}`
 - 이 경우 i는 index값(0,1,2,...) str는 index값과 대응하는 배열 내의 element
