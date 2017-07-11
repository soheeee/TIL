## Switch

c언어의 switch와 다른점이 있다.

바로 case들이 다른 case로 빠지지 않는다는 점. 그래서 break를 써줄 필요가 없다.

다만 fall-through동작이 필요할 때는 명시적으로 **fallthrough** 키워드를 이용하면 된다.

## Range

Range 타입
- Closed Ranges
- Half-Open Ranges
- NSRange
- Range with Strings

Reference https://stackoverflow.com/questions/30093688/how-to-create-range-in-swift

## Loop

배열을 탐색하는 루프가 필요할 때
1. range와 for문을 이용

`let range = 0...n
 for i in range{...}`

2. 배열자체를 for문에 이용

`for s in strings{...}`

3. **인덱스가 필요한 경우** - enumerate()를 이용

`for (i, str) in strings.enumerate(){...}`
 - 이 경우 i는 index값(0,1,2,...) str는 index값과 대응하는 배열 내의 element
