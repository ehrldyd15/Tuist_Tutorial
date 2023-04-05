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
