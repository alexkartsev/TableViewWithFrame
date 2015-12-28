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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(didBackButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    self.mySegmentedControll = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects: @"a", @"A", nil]];
    self.mySegmentedControll.frame = CGRectMake(self.view.bounds.size.width/2-50, 100, 100, 30);
    [self.view addSubview:self.mySegmentedControll];
    [self.mySegmentedControll addTarget:self action:@selector(mySegmentControlAction:) forControlEvents: UIControlEventValueChanged];
    self.mySegmentedControll.selectedSegmentIndex = 0;
    
    self.label1 = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-75, 140, 150, 28)];
    self.label1.lineBreakMode = NSLineBreakByWordWrapping;
    [self.label1 setFont:[UIFont fontWithName:@"Arial" size:12]];
    self.label1.numberOfLines = 2;
    [self.label1 setTextAlignment:NSTextAlignmentCenter];
    self.label1.text = @"Hello Hello Hello Hello Hello Hello";
    [self.view addSubview:self.label1];
    
    //indent from self.label1 is 17
    self.roundCornerButton = [[UIButton alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-50, 185, 100, 20)];
    self.roundCornerButton.backgroundColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];
    self.roundCornerButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.roundCornerButton setTitle:@"My Button" forState:UIControlStateNormal];
    [self.roundCornerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.roundCornerButton.layer.cornerRadius = 10;
    [self.view addSubview:self.roundCornerButton];
    
    //indent from self.roundCornerButton is 20
    self.label2 = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-75, 225, 150, 20)];
    [self.label2 setFont:[UIFont fontWithName:@"Arial" size:12]];
    [self.label2 setTextAlignment:NSTextAlignmentCenter];
    self.label2.text = @"Hello Hello";
    [self.view addSubview:self.label2];
    
    //indent from self.label2 is 20
    self.myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"car"]];
    self.myImageView.frame = CGRectMake(self.view.bounds.size.width/2-75, 265, 150, 150);
    [self.view addSubview:self.myImageView];
}

-(void)didBackButtonPress {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)mySegmentControlAction:(UISegmentedControl *)segment {
    if (segment.selectedSegmentIndex == 0)
    {
        if (self.isBigChars) {
            self.isBigChars = NO;
            [self updateAllFrames];
        }
    }
    if (segment.selectedSegmentIndex == 1)
    {
        if (!self.isBigChars) {
            self.isBigChars = YES;
            [self updateAllFrames];
        }
    }
}

-(void)updateAllFrames {
    if (self.isBigChars) {
        [UIView animateWithDuration:0.2 animations:^{
            [self.label1 setFont:[UIFont fontWithName:@"Arial" size:16]];
            self.label1.frame = CGRectMake(self.view.bounds.size.width/2-75, 140, 150, 38);
            
            self.roundCornerButton.titleLabel.font = [UIFont systemFontOfSize:16];
            self.roundCornerButton.frame = CGRectMake(self.view.bounds.size.width/2-60, 195, 120, 20);
            
            [self.label2 setFont:[UIFont fontWithName:@"Arial" size:16]];
            self.label2.frame = CGRectMake(self.view.bounds.size.width/2-75, 235, 150, 25);
            
            self.myImageView.frame = CGRectMake(self.view.bounds.size.width/2-75, 280, 150, 150);
        }];
    }
    else {
        [UIView animateWithDuration:0.2 animations:^{
            [self.label1 setFont:[UIFont fontWithName:@"Arial" size:12]];
            self.label1.frame = CGRectMake(self.view.bounds.size.width/2-75, 140, 150, 28);
            
            self.roundCornerButton.titleLabel.font = [UIFont systemFontOfSize:12];
            self.roundCornerButton.frame = CGRectMake(self.view.bounds.size.width/2-50, 185, 100, 20);
            
            [self.label2 setFont:[UIFont fontWithName:@"Arial" size:12]];
            self.label2.frame = CGRectMake(self.view.bounds.size.width/2-75, 225, 150, 20);
            
            self.myImageView.frame = CGRectMake(self.view.bounds.size.width/2-75, 265, 150, 150);
        }];
    }
}

@end
