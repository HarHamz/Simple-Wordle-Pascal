program wordle;
uses crt;

const max_attempts = 6;

var user_input, answer : string;
    left_attempts : integer;

label guess;

function get_word() : string;
const word_list: array[1..5] of string = ('agony','blank','crazy','decay','equal');
var random_index : integer;
begin
    randomize;
    random_index := random(5) + 1;
    get_word := word_list[random_index];
end;

function validate_length(user_input: string) : boolean;
begin
    if length(user_input) <> length(answer) then
    begin
        writeln('Invalid word length. The word has 5 letters.');
        validate_length := false;
    end;

end;

procedure display_feedback();
var i,j : integer;
    found : boolean;
begin
    
    for i := 1 to length(answer) do
    begin
        found := false;
        if(user_input[i] = answer[i]) then
        begin
            textbackground(green);
            write(user_input[i]);
            textbackground(black);
            found := true;
        end
        else
        begin
            for j := 1 to length(answer) do
            begin
                if(user_input[i] = answer[j]) then
                begin
                    textbackground(yellow);
                    write(user_input[i]);
                    textbackground(black);
                    found := true;
                    break;
                end;
            end;
        end;
        if not found then
        begin
            write(user_input[i]);
        end;
    end;
    writeln;
end;

begin
    left_attempts := 6;
    answer := get_word;
    clrscr;

    writeln('Welcome to Wordle!');
    writeln('------------------------------');

    repeat
    begin

        guess:
        writeln('Attempts left: ', left_attempts);
        write('Guess the word: ');
        readln(user_input);

        if (validate_length(user_input) = false) then
        begin
            goto guess;
        end;

        left_attempts := left_attempts - 1;

        display_feedback;

        if (user_input = answer) then
        begin
            break;
        end;


    end;
    until (left_attempts = 0);

    if left_attempts = 0 then
    begin
        writeln('You Lost!');
        readln();
        halt;
    end;

    if (user_input = answer) then
    begin
        writeln('You Win!');
    end;
end.