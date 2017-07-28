## -ObjC와 -all_load

프로젝트에 프레임워크를 적용시킬 때 linker error가 발생

Build Settings - Linking - Other Linker Flags에 있던 `-all_load`를 지우니까 해결됨

man ld에 나와있는 정보에 따르면: 

**-ObjC**: 
Loads all members of static archive libraries that implement an Objective-C class or category.

**-all_load**: 
Loads all members of static archive libraries.

왜 똑같은 기능이 두개 있는걸까

다음과 같은 이유 때문이다

For 64-bit and iPhone OS applications, there is a linker bug that prevents -ObjC from loading objects files from static libraries that contain only categories and no classes. The workaround is to use the -all_load or -force_load flags. -all_load forces the linker to load all object files from every archive it sees, even those without Objective-C code

https://github.com/Cocoanetics/DTCoreText/issues/169
