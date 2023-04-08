import SwiftUI

//구조체를 만든다
// Hashable 하게 하여 키값으로 Foreach를 써먹을 수 있게 한다
// 피터, 기현, 탐라, 린, 다나, 도리스 순
struct ContentString: Hashable{
    var question : String
    var day : Int
    var answers : [Answer]
}

// 종속된 구조체도 Hashable이라고 해주지 않으면 에러 터지니 주의할 것
struct Answer : Hashable{
    let state : String
    let score : [Double]
}
extension ContentString{
    static let storyData: [ContentString] =
    [   //question 1
        ContentString(question:"당신은 어떻게 행동하겠는가?",
                      day : 1,
                      answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [0.0,0.0,1.0,0.0,1.0,0.0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질 테니 그냥 있는다.", score: [0.0,1.0,0.0,0.0,0.0,0.0]),
                        Answer(state: "누군가 먼저 말을 걸어주길 기다린다.", score: [1.0,0.0,0.0,0.0,0.0,1.0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 바란다.", score: [0.0,0.0,0.0,1.0,0.0,0.0])
                      ]),
        //question 2
        ContentString(question:"당신은 어떻게 행동하겠는가?",
                      day : 3,
                      answers: [
                        Answer(state: "각자 조가 짜지고, 남는 팀원과 함께 간다.", score: [1.1,0.0,0.0,1.1,0.0,0.0]),
                        Answer(state: "누구와 가도 상관없어!\n 바로 인터뷰할 사람을 물색!", score: [0.0,0.0,0.0,0.0,1.1,1.1]),
                        Answer(state: "말을 거는 건 어려워! \n 친화력이 좋은 팀원과 함께 간다.", score: [0.0,1.1,0.0,0.0,0.0,0.0]),
                        Answer(state: "새로운 사람에게 말 거는 것을 어려워하는 팀원이 있는지 물어보고, 함께 하자고 한다.", score: [0.0,0.0,1.1,0.0,0.0,0.0])
                      ]),
        //question 3
        ContentString(question:"당신의 역할은?",
                      day : 4,
                      answers: [
                        Answer(state: "막히거나 논지를 벗어날 때, 정리하고 보강하기", score: [1.2,1.2,0.0,0.0,0.0,0.0]),
                        Answer(state: "이건 어떨까? 새로운 방향과 아이디어 제시하기", score: [0.0,0.0,0.0,1.2,0.0,1.2]),
                        Answer(state: "우리 팀원들 대단해~좋아요~ 긍정 리액션 담당! 공감하고 칭찬하기!", score: [0.0,0.0,1.2,0.0,1.2,0.0]),
                      ]),
        //question 4
        ContentString(question:"당신의 반응은?",
                      day : 5,
                      answers: [
                        Answer(state: "우리 아이디어는 괜찮은 것 같은데... \n 다음 발표는 제대로 해야겠군!", score: [0.0,0.0,1.3,0.0,0.0,1.3]),
                        Answer(state: "지적받은 것에 시무룩해진 것도 잠시, \n 피드백에 따라 부족한 점을 보강한다.", score: [0.0,1.3,0.0,1.3,0.0,0.0]),
                        Answer(state: "우리팀 수고했어요~다음에 잘하면 되죠! \n 일단 긍정적인 마인드를 되찾는다.", score: [1.3,0.0,0.0,0.0,1.3,0.0]),
                      ]),
        //question 5
        ContentString(question:"밥을 먹으며 당신은 무슨 생각 중..?",
                      day : 6,
                      answers: [
                        Answer(state: "요즘 물가가 많이 올랐군,,,", score: [0.0,1.4,0.0,0.0,0.0,0.0]),
                        Answer(state: "밥먹고는 있지만, 프로젝트에 대한 생각을 계속한다", score: [0,0,1.4,0,0,0]),
                        Answer(state: "왕~~밥이다!!!! 일단 밥에 집중한다", score: [0,0,0,0,0,1.4]),
                        Answer(state: "바다는 예쁘고, 날씨도 좋고.. 힐링 그 잡채.. 자주오면 좋겠다!!", score: [1.4,0,0,1.4,1.4,0])
                      ]),
        //question 6
        ContentString(question:"당신은 무엇을 할 것인가?",
                      day : 7,
                      answers: [
                        Answer(state: "정리 좋아~ 팀원들의 의견을 모아서 다듬는다.", score: [0,1.5,0,0,0,0]),
                        Answer(state: "팀원들의 부담감을 줄여주기 위해 최선을 다한다.", score: [0,0,1.5,0,0,0]),
                        Answer(state: "우리 팀 말만 해! 팀원들의 의견을 최대한 반영한다.", score: [1.5,0,0,0,0,0]),
                        Answer(state: "좋아하는 부분은 내가 할게! \n 이건 내가 하겠다고 말한다.", score: [0,0,0,1.5,1.5,1.5])
                        
                      ]),
        
        //question 7
        ContentString(question:"당신이 생각하는 MC1의 가치는?",
                      day : 8,
                      answers: [
                        Answer(state: "본격적인 프로젝트가 시작되기 전 워밍업!", score: [0,0.5,0,0.5,0,0]),
                        Answer(state: "전반적인 아카데미 생활에 익숙해질 수 있었던 시간", score: [0,0,0.5,0,0,0.5]),
                        Answer(state: "앞으로의 아카데미에서 열심히 활동할 수 있는 용기와 자극제!", score: [0,0,0,0,0.5,0]),
                        Answer(state: "협업을 배우는 시간. 두 명이 모이면 두 배가 아니라 열 배, 백 배가 될 수 있다! ", score: [0.5,0,0,0,0,0])
                      ])
    ]
}


struct Result:Hashable{
    var image : String
    var script1 : String
    var script2 : String
    var describe : String
    var guageDatas: [GuageData]
}
struct GuageData : Hashable{
    let text : String
    let num : Int
}

extension Result{
    static let results: [Result] =
    [
        //피터
        Result(image:"PETER character",
               script1: "아낌없이 주는,",
               script2: " PETER",
               describe: "모든 팀원에게 친절하고, 잘 도와주는 아낌없\n는 나무같은 당신! 팀원들을 편안하게 해주고 있군요. 조용한 듯 보이지만, 자신이 맡은 부\n분에 대한 열정과 특출난 능력으로 팀의 엄청\n난 조력자가 되어주고 있으시군요! 팀에 없어\n서는 안 될 인재에요. 이번 MC1에서도 당신\n의 열정을 발휘했기를 바랍니다!",
               guageDatas:[
                GuageData(text: "열정열정", num: 5),
                GuageData(text: "신중력", num: 4),
                GuageData(text: "전문성", num: 5),
                GuageData(text: "친절함", num: 4)
               ]),
        //기현
        Result( image : "KIHYUN character",
                script1: "물은 물이요 산은 산이로다,",
                script2: " KIHYUN",
                describe: "당신은 MC1에서 깔끔 정리 러너를 담당하셨\n군요! 다른 팀원들이 뽑아낸 인사이트를 정리\n하고, 그 과정에서 새롭게 인사이트를 뽑아낼 줄 알아요! 팀원들이 당신을 신뢰하고 있다는\n게 느껴져요. 의견을 제시할때도 깊게 생각하\n고 말하는 신중한 스타일인 당신, 진지해보이\n지만 가끔씩 팀원들에게 보이는 허당미가 매\n력이에요!",
                guageDatas:[
                    GuageData(text: "정리력", num: 5),
                    GuageData(text: "신중함", num: 4),
                    GuageData(text: "신뢰감", num: 5),
                    GuageData(text: "허당미", num: 3)
                ]),
        //탐라
        Result(image: "TAMRA character",
               script1: "도와줘, 탐라에몽!",
               script2: " TAMRA",
               describe: "당신은 언제나 유창한 말로 회의를 이끌어나\n갈 수 있는 리더시군요! MC1에서도 멋진 리\n더쉽을 발휘하고, 뛰어난 친화력으로 팀의 단\n합력을 올려줘요. 도라에몽처럼 쉬지 않고 뽑\n아내는 아이디어까지! 순발력까지 갖춘 팀의 아이디어 뱅크예요. 못하는 것이 없는 당신, 모든 러너들이 탐낼만한 인재예요!",
               guageDatas:[
                GuageData(text: "리더쉽", num: 5),
                GuageData(text: "친화력", num: 4),
                GuageData(text: "아이디어", num: 3),
                GuageData(text: "순발력", num: 4)
               ]),
        //린
        Result(image: "RIN character",
               script1: "놀땐 놀고, 할땐 하자구!",
               script2: " RIN",
               describe: "MC1에서 좋은 분위기의 촉마제 역할이었던 당신! 즐거운 장난으로 팀의 분위기를 풀어주\n기도 하고, 때로는 진지한 모습으로 회의에 참여하는 당신의 모습이 다른 러너들에게 좋\n은 영향을 주었네요. 팀에 필요한 것들을 누\n구보다 빠르게 파악하고, 팀의 진행도를 원활\n하게 올려주기도합니다.",
               guageDatas:[
                GuageData(text: "아이디어", num: 5),
                GuageData(text: "장난끼", num: 4),
                GuageData(text: "논리력", num: 5),
                GuageData(text: "진행력", num: 4)
               ]),
        //다나
        Result(image: "DANA character",
               script1: "확신의 긍정킹,",
               script2: " DANA",
               describe: "당신은 MC1에서 긍정적인 리액션을 담당하\n셨군요! 당신은 항상 긍정적인 자세로 주변 사람들을 편안하게 만들어줍니다. 때로는 자\n칫 무거워질 수 있는 팀의 분위기를 환기해주\n고, 영혼없는 리액션으로 팀원들의 사기를 북\n돋아요! 톡톡 튀는 아이디어까지 있으니, 여\n러분의 팀에게 꼭 필요한 러너군요! 다른 사\n람의 의견을 잘 받아주며, 자신의 의견 또한 피력할 줄 아는 당신, MC1에서도 당신의 긍\n정 에너지를 발휘했기를 바랍니다!",
               guageDatas:[
                GuageData(text: "긍정력", num: 5),
                GuageData(text: "포용력", num: 4),
                GuageData(text: "아이디어", num: 3),
                GuageData(text: "리액션", num: 4)
               ]),
        //도리스
        Result(image: "DORIS character",
               script1: "러너들의 빳데리,",
               script2: " DORIS",
               describe: "MC1에서 남들이 보지 못한 관점으로 문제를 해결하려고 하는 당신, 자신만의 인사이트를 톡톡히 보여주고 있네요! 팀이 간과하고 넘어\n갈 부분들을 집어주어 더 나은 솔루션을 위해 힘쓰고 있군요. 재치있는 입담과 유쾌한 웃음\n으로 팀의 분위기를 올려주는 센스까지! 팀의 에너자이저로서, 팀원에게 편안함을 가져다\n주는 러너네요!",
               guageDatas:[
                GuageData(text: "에너지", num: 5),
                GuageData(text: "편안함", num: 4),
                GuageData(text: "쾌활함", num: 5),
                GuageData(text: "문제해결", num: 4)
               ]),
    ]
}
