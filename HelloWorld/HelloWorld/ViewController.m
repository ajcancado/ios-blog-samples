//
//  ViewController.m
//  HelloWorld
//
//  Created by vinicius quaiato on 5/16/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)showMessage:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hi iOS folks!" message:@"oh... Hello World!" delegate:nil cancelButtonTitle:@"Bye!" otherButtonTitles:nil];
    
    [alert show];
}

@end
