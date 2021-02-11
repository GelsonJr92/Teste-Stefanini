Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    msg = find(".error")
    expect(msg.text).to eql expect_alert
end