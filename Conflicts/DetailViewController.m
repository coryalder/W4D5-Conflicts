//
//  DetailViewController.m
//  Conflicts
//
//  Created by Cory Alder on 2015-07-03.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item
- (IBAction)showNextSection:(id)sender {
    
    UIStoryboard *storyboardTwo = [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:nil];
    
//    [storyboardTwo instantiateViewControllerWithIdentifier:<#(nonnull NSString *)#>]
    
    UIViewController *vc = [storyboardTwo instantiateInitialViewController];
    
    [self presentViewController:vc animated:YES completion:nil];
    
    
}

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        
        
        NSLog(@"This is a change on the second conflict clone");
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
