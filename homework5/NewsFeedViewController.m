//
//  NewsFeedViewController.m
//  homework5
//
//  Created by Gabriele Angeline on 4/6/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import "NewsFeedViewController.h"

@interface NewsFeedViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *feedView;
@end

@implementation NewsFeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    self.feedView.contentSize = CGSizeMake(320, 1571);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
