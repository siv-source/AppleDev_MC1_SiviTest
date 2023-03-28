import SwiftUI

//구조체를 만든다
struct ContentString{
    var question : String
    var answers : [Answer]
}

extension ContentString{
    static let storyData: [ContentString] =
    [   //question 1
        ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람, 말걸기 무서워! 가만히 있는다.", score: [0,0,0,0,1,0])
                    ]),
        //question 2
      ContentString(question:"GUIDING QUESTION의 답을 구하기 위해, 2인 1조로 1대일 인터뷰를 하기로 한다. 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "각자 조가 짜지고 난 뒤, 남는 팀원과 함께 간다.", score: [1,0,0,0,0,0]),
                        Answer(state: "누구와 가도 상관없어! 일단 바로 인터뷰할 사람을 물색한다.", score: [0,1,0,0,0,0]),
                        Answer(state: "새로운 사람에게 말을 거는게 어렵기 때문에, 친화력이 좋은 팀원의 도움을 받는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람과 말하는 것을 어려워하는 팀원이 있는지 물어보고, 나와 함께 하자고 한다. ", score: [0,0,0,1,0,0])
                    ]),
        //question 3
      ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람, 말걸기 무서워! 가만히 있는다.", score: [0,0,0,0,1,0])
                    ]),
        //question 4
      ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람, 말걸기 무서워! 가만히 있는다.", score: [0,0,0,0,1,0])
                    ]),
        //question 5
      ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람, 말걸기 무서워! 가만히 있는다.", score: [0,0,0,0,1,0])
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
      ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?",
                    answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람, 말걸기 무서워! 가만히 있는다.", score: [0,0,0,0,1,0])
                    ]),
        //question 8
        ContentString(question:"MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?",
                      answers: [
                        Answer(state: "어색한 건 싫어! 먼저 말을 건다.", score: [1,0,0,0,0,0]),
                        Answer(state: "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.", score: [0,1,0,0,0,0]),
                        Answer(state: "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.", score: [0,0,1,0,0,0]),
                        Answer(state: "새로운 사람, 말걸기 무서워! 가만히 있는다.", score: [0,0,0,0,1,0])
                      ])
    ]
}

struct Answer{
    let state : String
    let score : [Double]
}
