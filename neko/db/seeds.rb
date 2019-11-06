Cat.delete_all
Cat.create(:name => 'aaa',
	:category => 'aaa',
    :description => 
    %{
        aaa
    },
	:price => 29.99,
	:available => true,
	:average_point => 5
)

Cat.create(:name => 'bbb',
	:category => 'bbb',
    :description => 
    %{
        bbb
    },
	:price => 29.99,
	:available => true,
	:average_point => 5
)
Food.delete_all
Food.create(:name => 'aaa',
	:category => 'aaa',
    :description => 
    %{
        aaa
    },
	:price => 29.99,
	:supportable => true,
	:average_point => 5
)
	
Food.create(:name => 'aaa',
	:category => 'aaa',
    :description => 
    %{
        aaa
    },
	:price => 29.99,
	:supportable => true,
	:average_point => 5
)
