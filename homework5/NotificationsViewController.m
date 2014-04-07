//
//  NotificationsViewController.m
//  homework5
//
//  Created by Gabriele Angeline on 4/6/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import "NotificationsViewController.h"
#import "NotificationsTableViewCell.h"

@interface NotificationsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *notificationsTableView;

//@property (nonatomic, strong) NSArray *notifications;

@end

@implementation NotificationsViewController

{
    NSArray *notifText;
    NSArray *timestamp;
    NSArray *profilePic;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
//        self.notifications =
//        @[ @{ @"text" : @"Ben Langholz tagged you in a post in iOS Bootcamp for Designers",
//              @"timestamp" : @"Friday at 11:29 AM"
//              },
//           @{ @"text" : @"Ben Langholz tagged you in a post in iOS Bootcamp for Designers",
//              @"profile_url" : @"https://scontent-a-ord.xx.fbcdn.net/hprofile-prn2/l/t1.0-1/p50x50/1491606_10152029838488479_1757199530_t.jpg",
//              @"timestamp" : @"Friday at 11:29 AM"
//              },
//           @{ @"text" : @"Ben Langholz tagged you in a post in iOS Bootcamp for Designers",
//              @"profile_url" : @"https://scontent-a-ord.xx.fbcdn.net/hprofile-prn2/l/t1.0-1/p50x50/1491606_10152029838488479_1757199530_t.jpg",
//              @"timestamp" : @"Friday at 11:29 AM"
//              }
//           ];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    // Configure the left button
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"search_icn"] style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    // Configure the right button
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"messages_icn"] style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    // Set the datasource and delegate
    self.notificationsTableView.dataSource = self;
    self.notificationsTableView.delegate = self;
    
    
    // Register the cell view
    UINib *nib = [UINib nibWithNibName:@"NotificationsTableViewCell" bundle:nil];
    [self.notificationsTableView registerNib:nib forCellReuseIdentifier:@"NotificationsTableViewCell"];
    
    self.notificationsTableView.rowHeight = 100;
    
    notifText = [NSArray arrayWithObjects:@"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", @"Ha Nguyen commented on a post that you're tagged in.", @"Jessica Pritchard likes a photo you're tagged in.", nil];
    
    timestamp = [NSArray arrayWithObjects:@"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", @"Friday at 11:29 AM", nil];
    
    profilePic = [NSArray arrayWithObjects:@"129", @"128", @"129", @"128", @"129", @"128", @"129", @"128", @"129", @"128", @"129", @"128", @"129", @"128", @"129", @"128", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view methods

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //NotificationsTableViewCell *cell = [[NotificationsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    NotificationsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NotificationsTableViewCell" forIndexPath:indexPath];
    
    
    //cell.textLabel.text = [NSString stringWithFormat:@"This is row %d", indexPath.row];
    cell.notificationsLabel.text = [notifText objectAtIndex:indexPath.row];
    cell.timeStampLabel.text = [timestamp objectAtIndex:indexPath.row];
    cell.posterView.image = [UIImage imageNamed:[profilePic objectAtIndex:indexPath.row]];
    
    return cell;
}




@end
