//
//  SettingsViewController.m
//  GoListen
//
//  Created by Marius Constantinescu on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize tableView;
@synthesize categories;

Preferences *prefs;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) initCategories
{
	categories = [[NSMutableDictionary alloc] initWithCapacity:11];
	
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	self.title = @"Settings";
	[self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
	
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView

{
	
	// Return the number of sections.
	
	return 1;
	
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
	
	// Return the number of rows in the section.
	
	return 11;
	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
	
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	//Check if cell is nil. If it is, create a new instance of it
	
	if (cell == nil) {
		
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:CellIdentifier];
		
	}
	
	// Configure the cell...
	
	cell.textLabel.text = [[prefs getCategories] objectAtIndex:indexPath.row];
	
	cell.detailTextLabel.text = [[prefs getNewsNumbers] objectAtIndex:indexPath.row];
	
    
	
	return cell;
	
}



- (void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	UIPickerView *myPickerView = [[UIPickerView alloc] init];
	myPickerView.delegate = self;
	myPickerView.showsSelectionIndicator = YES;

}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
	return [NSString stringWithFormat:@"%d", row];
}






//sa incapa pe ecran sau nu

/*
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{ 
    return 33.25;
}
*/









- (void)viewDidUnload
{
	[self setTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
