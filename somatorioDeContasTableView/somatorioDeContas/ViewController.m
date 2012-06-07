//
//  ViewController.m
//  somatorioDeContas
//
//  Created by vinicius quaiato on 5/20/12.
//  Copyright (c) 2012 Vinicius Quaiato. All rights reserved.
//

#import "ViewController.h"
#import "ListaDeValoresViewController.h"
#import "Gastos.h"

@interface ViewController (private)
-(NSString*) formatarTotalGastos;
@end

@implementation ViewController

@synthesize valorDoGasto;
@synthesize numeroDeGastos;
@synthesize totalDosGastos;

- (void)viewDidLoad{
    [super viewDidLoad];

    gastos = [[Gastos alloc]init];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
    [valorDoGasto resignFirstResponder];

    [super touchesBegan:touches withEvent:event];
}

-(void)addGasto:(id)sender{
    [gastos addGastoFromString: valorDoGasto.text];
    valorDoGasto.text = @"";
    
    numeroDeGastos.text = [NSString stringWithFormat:@"%i", [gastos totalDeGastos]];  
    
    totalDosGastos.text = [self formatarTotalGastos];
}

- (IBAction)verListaDeValores:(id)sender {
    id lista = [[ListaDeValoresViewController alloc] 
                initWithNibAndGastos:@"ListaDeValores" :gastos];
    
    [self presentViewController:lista animated:YES completion:nil]; 
}
-(NSString*) formatarTotalGastos{
    id somatorioGastos = [gastos somaDosGastos];
    
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"pt_BR"];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    [formatter setLocale: locale];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    return [formatter stringFromNumber:somatorioGastos];
}

//TextField Delegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{ 
    [textField resignFirstResponder];
    return NO;
}


//MÉTODOS GERADOS
- (void)viewDidUnload{
    [super viewDidUnload];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
@end
