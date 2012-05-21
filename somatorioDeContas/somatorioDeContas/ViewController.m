//
//  ViewController.m
//  somatorioDeContas
//
//  Created by vinicius quaiato on 5/20/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import "ViewController.h"
#import "Gastos.h"

@interface ViewController ()
@end

@implementation ViewController

@synthesize valorDoGasto;
@synthesize numeroDeGastos;
@synthesize totalDosGastos;

- (void)viewDidLoad{
    [super viewDidLoad];

    gastos = [[Gastos alloc]init];
}

-(void)addConta:(id)sender{
    [gastos addGastoFromString: valorDoGasto.text];
    valorDoGasto.text = @"";
    
    numeroDeGastos.text = [NSString stringWithFormat:@"%i", [gastos totalDeGastos]];  
    
    totalDosGastos.text = [[gastos somaDosGastos]stringValue];
}

//MÉTODOS GERADOS
- (void)viewDidUnload{
    [super viewDidUnload];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
@end
