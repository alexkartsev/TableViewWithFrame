//
//  ViewForSecondViewController.m
//  TableViewWithFrame
//
//  Created by Alexander on 12/29/15.
//  Copyright © 2015 iTechArt. All rights reserved.
//

#import "ViewForSecondViewController.h"

@implementation ViewForSecondViewController

static float indent = 20.0f;

-(id)initWithFrame:(CGRect)aRect {
    self = [super initWithFrame:aRect];
    
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        
        self.backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
        [self.backButton setTitle:@"Back" forState:UIControlStateNormal];
        [self.backButton setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        [self addSubview:self.backButton];
        
        self.mySegmentedControll = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects: @"a", @"A", nil]];
        self.mySegmentedControll.frame = CGRectMake(aRect.size.width/2-50, 100, 100, 30);
        [self addSubview:self.mySegmentedControll];
        self.mySegmentedControll.selectedSegmentIndex = 0;
        
        self.label1 = [[UILabel alloc] init];
        self.label1.lineBreakMode = NSLineBreakByWordWrapping;
        [self.label1 setFont:[UIFont fontWithName:@"Arial" size:12]];
        self.label1.numberOfLines = 0;
        [self.label1 setTextAlignment:NSTextAlignmentCenter];
        self.label1.text = @"Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello";
        [self addSubview:self.label1];
        
        self.roundCornerButton = [[UIButton alloc] init];
        self.roundCornerButton.backgroundColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];
        self.roundCornerButton.titleLabel.font = [UIFont systemFontOfSize:12];
        [self.roundCornerButton setTitle:@"My Button" forState:UIControlStateNormal];
        [self.roundCornerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.roundCornerButton.layer.cornerRadius = 10;
        [self addSubview:self.roundCornerButton];
        
        self.label2 =[[UILabel alloc] init];
        [self.label2 setFont:[UIFont fontWithName:@"Arial" size:12]];
        [self.label2 setTextAlignment:NSTextAlignmentCenter];
        self.label2.text = @"Hello Hello";
        [self addSubview:self.label2];
        
        self.myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"car"]];
        [self addSubview:self.myImageView];
        
        [self.mySegmentedControll addTarget:self action:@selector(mySegmentControlAction:) forControlEvents: UIControlEventValueChanged];
    }
    return self;
}

-(void)layoutSubviews {
    self.label1.frame = CGRectMake(self.bounds.size.width/2-75, 140, 150, [self.label1 sizeThatFits:CGSizeMake(150, self.bounds.size.height)].height);
    
    self.roundCornerButton.frame = CGRectMake(self.bounds.size.width/2-50, self.label1.frame.size.height+self.label1.frame.origin.y+indent, 100, 20);
    
    self.label2.frame = CGRectMake(self.bounds.size.width/2-75, self.roundCornerButton.frame.size.height+self.roundCornerButton.frame.origin.y+indent, 150, [self.label2 sizeThatFits:CGSizeMake(self.bounds.size.height, self.bounds.size.width)].height);
    
    self.myImageView.frame = CGRectMake(self.bounds.size.width/2-75, self.label2.frame.origin.y+self.label2.frame.size.height+indent, 150, 150);
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
    [self setNeedsLayout];
}

@end
