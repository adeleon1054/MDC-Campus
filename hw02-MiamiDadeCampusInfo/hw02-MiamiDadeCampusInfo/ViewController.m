//
//  ViewController.m
//  hw02-MiamiDadeCampusInfo
//
//  Created by Asdruval De Leon on 10/14/17.
//  Copyright © 2017 Asdruval De Leon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *imagesArr;
@property (strong, nonatomic) NSArray *campusNameArr;
@property (strong, nonatomic) NSArray *campusAddArr;

@property (weak, nonatomic) IBOutlet UIButton *btnPrevious;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
@property (weak, nonatomic) IBOutlet UIImageView *imgDisplay;

@property (weak, nonatomic) IBOutlet UILabel *lblCampusName;

@property (weak, nonatomic) IBOutlet UILabel *lblCampusAdd;


@property (getter=getCount,setter=setCount:) int count;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _count =0;
    [_btnPrevious setEnabled:false];
    
    _imagesArr = [NSArray array];
    _imagesArr = @[@"hialeah.jpg",
                   @"wolfson.jpg",
                   @"interamerican.jpg",
                   @"kendall.jpg",
                   @"homestead.jpg"];
    
    _campusNameArr = [NSArray array];
    _campusNameArr = @[@"Hialeah Campus",
                       @"Wolfson Campus",
                       @"InterAmerican Campus",
                       @"Kendall Campus",
                       @"Homestead Campus"];

    _campusAddArr = [NSArray array];
    _campusAddArr = @[@"1780 W 49th Street Hialeah, Florida 33012",
                      @"300 NE Second Ave. Miami, FL 33132",
                      @"627 SW 27th Ave. Miami, FL 33135",
                      @"11011 SW 104 Street Miami, FL 33176",
                      @"500 College Terrace Homestead, Florida 33030"];
    
    _lblCampusName.text = @"Hialeah Campus";
    _lblCampusAdd.text = @"1780 W 49th Street Hialeah, Florida 33012";

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPreviuos:(id)sender {
    _count--;
    [self btnStatus];
    int currentIndex = _count;
    UIImage* image = [UIImage imageNamed:[_imagesArr objectAtIndex:currentIndex]];
    [_imgDisplay setImage:image];
    [_lblCampusName setText:[_campusNameArr objectAtIndex:currentIndex]];
    [_lblCampusAdd setText:[_campusAddArr objectAtIndex:currentIndex]];
}
- (IBAction)btnNext:(id)sender {
    _count++;
    [self btnStatus];
    int currentIndex = _count;
    UIImage* image = [UIImage imageNamed:[_imagesArr objectAtIndex:currentIndex]];
    [_imgDisplay setImage:image];
    [_lblCampusName setText:[_campusNameArr objectAtIndex:currentIndex]];
    [_lblCampusAdd setText:[_campusAddArr objectAtIndex:currentIndex]];
}

-(void)btnStatus {
    if(_count == 0)
        [_btnPrevious setEnabled:false];
    else if (_count == 4)
        [_btnNext setEnabled:false];
    else
    {
        [_btnPrevious setEnabled:true];
        [_btnNext setEnabled:true];
    }
}

@end
