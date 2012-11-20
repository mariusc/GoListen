//
//  Preferences.h
//  GoListen
//
//  Created by Marius Constantinescu on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Preferences : NSObject

- (void) initPreferences;

- (int) getGeneralNumber;
- (int) getPoliticaNumber;
- (int) getInternationalNumber;
- (int) getFinanciarNumber;
- (int) getGadgetsNumber;
- (int) getJocuriNumber;
- (int) getShowbizNumber;
- (int) getBusinessNumber;
- (int) getLifestyleNumber;
- (int) getAutoNumber;
- (int) getSportNumber;

- (NSArray*) getCategories;
- (NSArray*) getNewsNumbers;

- (void) setGeneralNumber:(int)_nr;
- (void) setPoliticaNumber:(int)_nr;
- (void) setInternationalNumber:(int)_nr;
- (void) setFinanciarNumber:(int)_nr;
- (void) setGadgetsNumber:(int)_nr;
- (void) setJocuriNumber:(int)_nr;
- (void) setShowbizNumber:(int)_nr;
- (void) setBusinessNumber:(int)_nr;
- (void) setLifestyleNumber:(int)_nr;
- (void) setAutoNumber:(int)_nr;
- (void) setSportNumber:(int)_nr;
@end
