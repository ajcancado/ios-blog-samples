//
//  ListaDeValoresViewController.m
//  somatorioDeContas
//
//  Created by vinicius quaiato on 6/7/12.
//  Copyright (c) 2012 Vinicius Quaiato. All rights reserved.
//

#import "ListaDeValoresViewController.h"

@interface ListaDeValoresViewController ()
@end

@implementation ListaDeValoresViewController
- (id) initWithNibAndGastos:(NSString *)nib :(Gastos *)passedGastos{
    self = [super initWithNibName:nib bundle:nil];
    gastos = passedGastos;
    
    locale = [[NSLocale alloc] initWithLocaleIdentifier:@"pt_BR"];
    formatter = [[NSNumberFormatter alloc]init];
    [formatter setLocale: locale];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    return self;
}
//TableView
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Valores gastos";
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [gastos totalDeGastos];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [formatter stringFromNumber:[gastos gastoAtIndex:indexPath.row]];     
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)voltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
