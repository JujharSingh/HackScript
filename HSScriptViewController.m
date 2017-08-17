#import "HSScriptViewController.h"
#include <Python/Python.h>

@implementation HSScriptViewController {
	// Variables Declared Here
}

- (void)loadView {
	[super loadView];

	self.title = @"Script Editor";
	self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonTapped:)] autorelease];

	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	[button addTarget:self 
             action:@selector(startButtonTapped:)
   forControlEvents:UIControlEventTouchUpInside];
  [button setTitle:@"Start" forState:UIControlStateNormal];
	button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
	[self.view addSubview:button];
}

- (void)backButtonTapped:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
	[self release];
}

- (void)startButtonTapped:(id)sender {
	Py_Initialize();
  PyRun_SimpleString("print(\"hello world\")");
  Py_Finalize();
}
@end
