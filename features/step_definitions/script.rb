Quando("eu uso um script") do
    visit '/outros/scroll'
    page.execute_script("window.scrollBy(0, 3000)")
    sleep 2
end