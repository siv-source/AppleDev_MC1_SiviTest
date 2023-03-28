import SwiftUI

//구조체를 만든다
// Hashable 하게 하여 키값으로 Foreach를 써먹을 수 있게 한다
struct ContentString: Hashable{
    var question : String
    var answers : [Answer]
}

extension ContentString{
    static let storyData: [ContentString] =
    [   //question 1
        ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 정적... 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "어색한건 싫어. 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,1,0,0,0,0]),
                        Answer(state: "누군가 먼저 말을 걸어주길 기다린다.", score: [0,0,1,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 바란다.", score: [0,0,0,0,1,0])
                    ]),
        //question 2
      ContentString(question:"GUIDING QUESTION의 답을 구하기 위해, 2인 1조로 1대일 인터뷰를 하기로 한다. 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "각자 조가 짜지고, 남는 팀원과 함께 간다.", score: [1,0,0,0,0,0]),
                        Answer(state: "누구와 가도 상관없어! 일단 바로 인터뷰할 사람을 물색한다.", score: [0,1,0,0,0,0]),
                        Answer(state: "새로운 사람에게 말을 거는게 어렵기 때문에, 친화력이 좋은 팀원의 도움을 받는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람과 말하는 것을 어려워하는 팀원이 있는지 물어보고, 나와 함께 하자고 한다.", score: [0,0,0,1,0,0])
                    ]),
        //question 3
      ContentString(question:"첫번째 CBL 시작, 우리들의 ACADEMY LIFE를 위해 Generating Solution Concepts 과정을 행하는 중... 당신의 역할은?",
                    answers: [
                        Answer(state: "회의 중 막히는 부분이 있거나, 논지를 벗어날 때 한번씩 정리하고 보강하기 ", score: [1,0,0,0,0,0]),
                        Answer(state: "우리 팀원들 대단해~좋아요~(긍정 리액션담당!) 공감하고 칭찬하기!", score: [0,1,0,0,0,0]),
                        Answer(state: "이것도 생각해보자! 새로운 방향과 아이디어 제시히기! ", score: [0,0,1,0,0,0]),
                    ]),
        //question 4
      ContentString(question:"같은 그룹에 속해있는 다른 팀과 Our Solution Concept을 공유하기 위해, 발표를 했다.  발표준비가 부족한 것을 지적받았다. 당신의 반응은?",
                    answers: [
                        Answer(state: "우리 아이디어는 괜찮은 것 같은데... 다음 발표는 제대로 해야겠군!", score: [1,0,0,0,0,0]),
                        Answer(state: "지적받은 것에 시무룩해하면서, 피드백에 따라 자료를 바로 보강한다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시비팀 수고했어요~~ 다음에 열심히 하면 되죠~~ 일단 긍정적인 마인드를 되찾는다.", score: [0,0,1,0,0,0]),
                    ]),
        //question 5
      ContentString(question:"분위기 전환 및 팀원들과의 친목도모를 위해 바다를 갔다. 처음 밖에서 하는 팀활동!! 밥을 먹으며 당신은 무슨 생각 중..?",
                    answers: [
                        Answer(state: "요즘 물가가 많이 올랐군,,,", score: [1,0,0,0,0,0]),
                        Answer(state: "밥을 먹고 있지만, 프로젝트에 대한 생각을 계속한다", score: [0,1,0,0,0,0]),
                        Answer(state: "바다는 예쁘고, 날씨도 좋고.. 힐링 그 잡채.. 자주오면 좋겠다!!", score: [0,0,1,0,0,0]),
                        Answer(state: "왕~~밥이다!!!! 일단 밥에 집중한다", score: [0,0,0,0,1,0])
                    ]),
        //question 6
      ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람, 말걸기 무서워! 가만히 있는다.", score: [0,0,0,0,1,0])
                    ]),
        //question 7
      ContentString(question:"우리의 서비스 \"아침의 사과\"를 구현하기로 한다 이 때, 당신은 어떻게 할 것인가?",
                    answers: [
                        Answer(state: "좋아하는 부분은 내가 할게! 이건 내가 하겠다고 말한다.", score: [1,0,0,0,0,0]),
                        Answer(state: "정리 좋아~ 팀원들의 의견을 모아서 다듬는다 ", score: [0,1,0,0,0,0]),
                        Answer(state: "팀원의 부담감을 줄여주기 위해 최선을 다한다.", score: [0,0,1,0,0,0]),
                        Answer(state: "우리팀 말만 해~ 팀원들의 의견을 최대한 반영한다.", score: [0,0,0,0,1,0])
                    ]),
        //question 8
        ContentString(question:"첼린지가 끝났다~! 당신이 생각하는 첫 MC1의 가치는?",
                      answers: [
                        Answer(state: "앞으로 아카데미에서 열심히 활동할 수 있는 용기와 자극제!", score: [1,0,0,0,0,0]),
                        Answer(state: "본격적인 프로젝트가 시작되기 전 워밍업", score: [0,1,0,0,0,0]),
                        Answer(state: "전반적인 아카데미 생활에 익숙해질 수 있었던 시간", score: [0,0,1,0,0,0]),
                        Answer(state: "협업을 배우는 시간. 두 명이 모이면 두 배가 아니라 열 배, 백 배가 될 수 있다! ", score: [0,0,0,0,1,0])
                      ])
    ]
}

// 종속된 구조체도 Hashable이라고 해주지 않으면 에러 터지니 주의할 것
struct Answer : Hashable{
    let state : String
    let score : [Double]
}
