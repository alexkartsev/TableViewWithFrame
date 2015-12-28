//
//  MyTableViewCell.m
//  TableViewWithFrame
//
//  Created by Alexander on 12/28/15.
//  Copyright © 2015 iTechArt. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.descriptionLabel1 = [[UILabel alloc] init];
        self.descriptionLabel1.font = [UIFont fontWithName:@"Arial" size:12.0f];
        [self addSubview:self.descriptionLabel1];
        
        self.descriptionLabel2 = [[UILabel alloc] init];
        self.descriptionLabel2.font = [UIFont fontWithName:@"Arial" size:12.0f];
        [self addSubview:self.descriptionLabel2];
        
        self.descriptionLabel3 = [[UILabel alloc] init];
        self.descriptionLabel3.font = [UIFont fontWithName:@"Arial" size:12.0f];
        [self addSubview:self.descriptionLabel3];
        
        self.imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"car"]];
        [self addSubview:self.imageView1];
        
        self.imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"car"]];
        [self addSubview:self.imageView2];
        
        self.lineView1 = [[UIView alloc] init];
        self.lineView1.backgroundColor = [UIColor blackColor];
        [self addSubview:self.lineView1];
        
        self.lineView2 = [[UIView alloc] init];
        self.lineView2.backgroundColor = [UIColor blackColor];
        [self addSubview:self.lineView2];
    }
    return self;
}

- (void)layoutSubviews
{
    self.descriptionLabel1.frame = CGRectMake(40, 10, self.bounds.size.width-50, 15);
    self.descriptionLabel2.frame = CGRectMake(40, 40, self.bounds.size.width-50, 15);
    self.descriptionLabel3.frame = CGRectMake(40, 60, self.bounds.size.width-50, 15);
    self.imageView1.frame = CGRectMake(5, 75, 20, 20);
    self.imageView2.frame = CGRectMake(self.bounds.size.width-15, 5, 10, 10);
    self.lineView1.frame = CGRectMake(30, 0, 1, self.bounds.size.height);
    self.lineView2.frame = CGRectMake(self.bounds.size.width-20, 0, 1, self.bounds.size.height);
    [super layoutSubviews];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
