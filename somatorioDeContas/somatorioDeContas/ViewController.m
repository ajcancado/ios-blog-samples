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

@synthesize valorConta;
@synthesize numeroDeContas;
@synthesize totalContas;

- (void)viewDidLoad{
    [super viewDidLoad];

    gastos = [[Gastos alloc]init];
}

-(void)addConta:(id)sender{
    [gastos addGastoFromString: valorConta.text];
    valorConta.text = @"";
    
    numeroDeContas.text = [NSString stringWithFormat:@"%i", [gastos totalDeGastos]];  
    
    totalContas.text = [[gastos somaDosGastos]stringValue];
}

//MÉTODOS GERADOS
- (void)viewDidUnload{
    [super viewDidUnload];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
@end
