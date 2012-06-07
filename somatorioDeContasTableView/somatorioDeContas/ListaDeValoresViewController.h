//
//  ListaDeValoresViewController.h
//  somatorioDeContas
//
//  Created by vinicius quaiato on 6/7/12.
//  Copyright (c) 2012 Vinicius Quaiato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gastos.h"

@interface ListaDeValoresViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    Gastos* gastos;
    NSLocale* locale;
    NSNumberFormatter* formatter;
}
- (IBAction)voltar:(id)sender;
- (id) initWithNibAndGastos:(NSString*)nib :(Gastos*)passedGastos;
@end
