resource "aws_sfn_state_machine" "train_state_machine" {
  name       = "train-state-machine"
  role_arn   = aws_iam_role.step_function_lambda_invole_role.arn
  definition = data.local_file.train_step_function_file.content
}

data "local_file" "train_step_function_file" {
  filename = "./data/step_functions/train_step_function.json"
}