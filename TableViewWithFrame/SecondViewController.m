//
//  SecondViewController.m
//  TableViewWithFrame
//
//  Created by Alexander on 12/28/15.
//  Copyright © 2015 iTechArt. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (assign, nonatomic) BOOL isBigChars;

@end

@implementation SecondViewController

static float indent = 20.0f;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.myView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.myView];
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(didBackButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [self.myView addSubview:backButton];
    
    self.mySegmentedControll = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects: @"a", @"A", nil]];
    self.mySegmentedControll.frame = CGRectMake(self.myView.bounds.size.width/2-50, 100, 100, 30);
    [self.myView addSubview:self.mySegmentedControll];
    [self.mySegmentedControll addTarget:self action:@selector(mySegmentControlAction:) forControlEvents: UIControlEventValueChanged];
    self.mySegmentedControll.selectedSegmentIndex = 0;
    
    self.label1 = [[UILabel alloc] init];
    self.label1.lineBreakMode = NSLineBreakByWordWrapping;
    [self.label1 setFont:[UIFont fontWithName:@"Arial" size:12]];
    self.label1.numberOfLines = 0;
    [self.label1 setTextAlignment:NSTextAlignmentCenter];
    self.label1.text = @"Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello";
    [self.myView addSubview:self.label1];
    
    self.roundCornerButton = [[UIButton alloc] init];
    self.roundCornerButton.backgroundColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];
    self.roundCornerButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.roundCornerButton setTitle:@"My Button" forState:UIControlStateNormal];
    [self.roundCornerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.roundCornerButton.layer.cornerRadius = 10;
    [self.myView addSubview:self.roundCornerButton];
    
    self.label2 =[[UILabel alloc] init];
    [self.label2 setFont:[UIFont fontWithName:@"Arial" size:12]];
    [self.label2 setTextAlignment:NSTextAlignmentCenter];
    self.label2.text = @"Hello Hello";
    [self.myView addSubview:self.label2];
    
    self.myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"car"]];
    [self.myView addSubview:self.myImageView];
    
    [self updateAllFrames];
}

-(void)didBackButtonPress {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)mySegmentControlAction:(UISegmentedControl *)segment {
    if (segment.selectedSegmentIndex == 0)
    {
        [self.label1 setFont:[UIFont fontWithName:@"Arial" size:12]];
        [self.label2 setFont:[UIFont fontWithName:@"Arial" size:12]];
    }
    if (segment.selectedSegmentIndex == 1)
    {
        [self.label1 setFont:[UIFont fontWithName:@"Arial" size:16]];
        [self.label2 setFont:[UIFont fontWithName:@"Arial" size:16]];
    }
    [UIView animateWithDuration:.2 animations:^{
        [self updateAllFrames];
    }];
}

-(void)updateAllFrames {
    self.label1.frame = CGRectMake(self.myView.bounds.size.width/2-75, 140, 150, [self.label1 sizeThatFits:CGSizeMake(150, self.myView.bounds.size.height)].height);
    self.roundCornerButton.frame = CGRectMake(self.myView.bounds.size.width/2-50, self.label1.frame.size.height+self.label1.frame.origin.y+indent, 100, 20);
    self.label2.frame = CGRectMake(self.myView.bounds.size.width/2-75, self.roundCornerButton.frame.size.height+self.roundCornerButton.frame.origin.y+indent, 150, [self.label2 sizeThatFits:CGSizeMake(self.myView.bounds.size.height, self.myView.bounds.size.width)].height);
    self.myImageView.frame = CGRectMake(self.myView.bounds.size.width/2-75, self.label2.frame.origin.y+self.label2.frame.size.height+indent, 150, 150);
}

@end
