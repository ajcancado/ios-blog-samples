//
//  ViewController.m
//  table-view
//
//  Created by vinicius quaiato on 5/31/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize itens;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    itens = [[NSArray alloc] initWithObjects:
                                [[NSDecimalNumber alloc] initWithFloat: 10.13],
                                [[NSDecimalNumber alloc] initWithFloat: 5.99],
                                [[NSDecimalNumber alloc] initWithFloat: 3.25],
                                [[NSDecimalNumber alloc] initWithFloat: 0.99],
                                [[NSDecimalNumber alloc] initWithFloat: 2.10],
                                [[NSDecimalNumber alloc] initWithFloat: 24.76]
                                , nil];
    
    self->formatter = [[NSNumberFormatter alloc]init];
    [self->formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    self->locale = [[NSLocale alloc] initWithLocaleIdentifier:@"pt_BR"];
    [self->formatter setLocale: self->locale];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


/*Table*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [itens count];
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"Valores";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault              reuseIdentifier:CellIdentifier];
    }

    cell.textLabel.text = [self->formatter stringFromNumber: [itens objectAtIndex: [indexPath row]]];
    return cell;
} 

@end
