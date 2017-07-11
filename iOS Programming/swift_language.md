## Switch

c언어의 switch와 다른점이 있다.

바로 case들이 다른 case로 빠지지 않는다는 점. 그래서 break를 써줄 필요가 없다.

다만 fall-through동작이 필요할 때는 명시적으로 **fallthrough** 키워드를 이용하면 된다.
