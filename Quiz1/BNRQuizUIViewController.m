//
//  BNRQuizUIViewController.m
//  Quiz
//
//  Created by Apple on 16/2/28.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BNRQuizUIViewController.h"

@interface BNRQuizUIViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic,copy) NSArray *questions;
@property (nonatomic,copy) NSArray *answers;

@property (nonatomic,weak)IBOutlet UILabel *questionLabel;
@property (nonatomic,weak)IBOutlet UILabel *answerLable;

@end

@implementation BNRQuizUIViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    //调用父类实现初始化的方法
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
    //创建两个数组对象，存储所需的问题和答案
    //同时，将questions和answers分别指向问题数组和答案数组
        
    self.questions = @[@"From what is cognac made?",
                       @"What is 4+22?",
                       @"What is the capital of Vermont?"];
    
        self.answers = @[@"Grapes",
                         @"26",
                         @"Montpelier"];
        
    }
    
    //返回新对象的地址
    return self;
}

- (IBAction)ShowQuestion:(id)sender
{
    //进入下一个问题
    self.currentQuestionIndex++;
    
    //是否已经回答完了所有问题？
    if (self.currentQuestionIndex == [self.questions count]) {
    
        
        //回到第一个问题
        self.currentQuestionIndex = 0;
    }
    
    //根据正在回答的问题序号从数组中取出问题字符串
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //将问题字符串显示在标签上
    self.questionLabel.text = question;
    
    //重置答案字符串
    self.answerLable.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    //当期问题的答案是什么？
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //在答案标签上显示相应的答案
    self.answerLable.text = answer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
