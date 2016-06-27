//
//  FISDetailViewController.m
//  tasksToday
//
//  Created by Colin Walsh on 6/27/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISDetailViewController.h"
#import <EventKit/EventKit.h>


@interface FISDetailViewController ()

@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

@implementation FISDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableString *eventString = [[NSMutableString alloc] init];
    
    for (EKEvent* events in self.events) {
        [eventString appendString: events.title];
        if (events != [self.events lastObject]) {
            [eventString appendString:@"\n"];
        }
    }
    
    self.textView.text = eventString;
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
