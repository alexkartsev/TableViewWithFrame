//
//  SecondViewController.m
//  TableViewWithFrame
//
//  Created by Alexander on 12/28/15.
//  Copyright © 2015 iTechArt. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewForSecondViewController.h"

@interface SecondViewController ()

@property (strong, nonatomic) ViewForSecondViewController *myView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView = [[ViewForSecondViewController alloc] initWithFrame:self.view.bounds];
    [self.myView.backButton addTarget:self action:@selector(didBackButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.myView];
}

-(void)didBackButtonPress {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
