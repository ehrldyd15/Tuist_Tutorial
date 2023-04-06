# Tuist_Tutorial

## [설치]

curl -Ls https://install.tuist.io | bash

## [프로젝트 초기화]

mkdir MyApp 

cd MyApp 

tuist init --platform ios   // UIKit

tuist init --platform ios --template swiftui   // SwiftUI

## [수정]

tuist edit

## [tree 확인]

tree .

tree가 설치되어있지 않다면

brew install tree

## [프로젝트 생성]

tuist generate

## [참고자료]

1. 프로젝트 생성방법

https://baegteun.tistory.com/2

2. 외부의존성 적용 방법 

https://baegteun.tistory.com/3

https://okanghoon.medium.com/tuist-%EB%A1%9C-%EC%99%B8%EB%B6%80-%EC%9D%98%EC%A1%B4%EC%84%B1-%EA%B4%80%EB%A6%AC%ED%95%98%EA%B8%B0-85609e70133c

3. extension 

https://baegteun.tistory.com/4

https://github.com/mephrine/TuistRxTemplate

http://minsone.github.io/mac/ios/ios-project-generate-with-tuist-3


