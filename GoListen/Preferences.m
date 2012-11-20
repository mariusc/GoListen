//
//  Preferences.m
//  GoListen
//
//  Created by Marius Constantinescu on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Preferences.h"

@implementation Preferences

int general_nr;
int politica_nr;
int international_nr;
int financiar_nr;
int gadgets_nr;
int jocuri_nr;
int showbiz_nr;
int business_nr;
int lifestyle_nr;
int auto_nr;
int sport_nr;

- (void) initPreferences
{
	general_nr = 3;
	politica_nr = 3;
	international_nr = 3;
	financiar_nr = 3;
	gadgets_nr = 3;
	jocuri_nr = 3;
	showbiz_nr = 3;
	business_nr = 3;
	lifestyle_nr = 3;
	auto_nr = 3;
	sport_nr = 3;
}




- (int) getGeneralNumber
{
	return general_nr;
}

- (int) getPoliticaNumber
{
	return politica_nr;
}

- (int) getInternationalNumber
{
	return international_nr;
}

- (int) getFinanciarNumber
{
	return financiar_nr;
}

- (int) getGadgetsNumber
{
	return gadgets_nr;
}

- (int) getJocuriNumber
{
	return jocuri_nr;
}

- (int) getShowbizNumber
{
	return showbiz_nr;
}

- (int) getBusinessNumber
{
	return business_nr;
}

- (int) getLifestyleNumber
{
	return lifestyle_nr;
}

- (int) getAutoNumber
{
	return auto_nr;
}

- (int) getSportNumber
{
	return sport_nr;
}




- (void) setGeneralNumber:(int)_nr
{
	general_nr = _nr;
}

- (void) setPoliticaNumber:(int)_nr
{
	politica_nr = _nr;
}

- (void) setInternationalNumber:(int)_nr
{
	international_nr = _nr;
}

- (void) setFinanciarNumber:(int)_nr
{
	financiar_nr = _nr;
}

- (void) setGadgetsNumber:(int)_nr
{
	gadgets_nr = _nr;
}

- (void) setJocuriNumber:(int)_nr
{
	jocuri_nr = _nr;
}

- (void) setShowbizNumber:(int)_nr
{
	showbiz_nr = _nr;
}

- (void) setBusinessNumber:(int)_nr
{
	business_nr = _nr;
}

- (void) setLifestyleNumber:(int)_nr
{
	lifestyle_nr = _nr;
}

- (void) setAutoNumber:(int)_nr
{
	auto_nr = _nr;
}

- (void) setSportNumber:(int)_nr
{
	sport_nr = _nr;
}


- (NSArray*) getCategories
{
	NSArray* categories = [NSArray arrayWithObjects:@"General", @"Politica", @"International", @"Financiar", @"Gadgets", @"Jocuri", @"Showbiz", @"Business", @"Lifestyle", @"Auto", @"Sport", nil];
	
	return categories;
}

- (NSArray*) getNewsNumbers
{
	NSString* general_nr_str = [NSString stringWithFormat:@"%d", [self getGeneralNumber]];
	NSString* politica_nr_str = [NSString stringWithFormat:@"%d", [self getPoliticaNumber]];
	NSString* international_nr_str = [NSString stringWithFormat:@"%d", [self getInternationalNumber]];
	NSString* financiar_nr_str = [NSString stringWithFormat:@"%d", [self getFinanciarNumber]];
	NSString* gadgets_nr_str = [NSString stringWithFormat:@"%d", [self getGadgetsNumber]];
	NSString* jocuri_nr_str = [NSString stringWithFormat:@"%d", [self getJocuriNumber]];
	NSString* showbiz_nr_str = [NSString stringWithFormat:@"%d", [self getShowbizNumber]];
	NSString* business_nr_str = [NSString stringWithFormat:@"%d", [self getBusinessNumber]];
	NSString* lifestyle_nr_str = [NSString stringWithFormat:@"%d", [self getLifestyleNumber]];
	NSString* auto_nr_str = [NSString stringWithFormat:@"%d", [self getAutoNumber]];
	NSString* sport_nr_str = [NSString stringWithFormat:@"%d", [self getSportNumber]];
	
	NSArray* numbers = [NSArray arrayWithObjects:general_nr_str, politica_nr_str, international_nr_str, financiar_nr_str, gadgets_nr_str, jocuri_nr_str, showbiz_nr_str, business_nr_str, lifestyle_nr_str, auto_nr_str, sport_nr_str, nil];
	
	return numbers;
}




@end
