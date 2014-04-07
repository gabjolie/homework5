//
//  NotificationsTableViewCell.h
//  homework5
//
//  Created by Gabriele Angeline on 4/6/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *notificationsLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeStampLabel;


@end
