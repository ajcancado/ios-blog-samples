//
//  ViewController.h
//  somatorioDeContas
//
//  Created by vinicius quaiato on 5/20/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gastos.h"

@interface ViewController : UIViewController<UITextInputDelegate>
{
    Gastos* gastos;
}

-(IBAction)addGasto:(id)sender;
@property (nonatomic,retain) IBOutlet UILabel* totalDosGastos;
@property (nonatomic,retain) IBOutlet UILabel* numeroDeGastos;
@property (nonatomic,retain) IBOutlet UITextField* valorDoGasto;
@end
