Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40709E8C64
	for <lists+linux-um@lfdr.de>; Tue, 29 Oct 2019 17:06:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIPM5OJk9q1pRR68Lw8RKW5MrpmqHbZlGJwukcxaBUg=; b=ekJi8qupZlXEdY
	FqJYn1G4uaDee0J09G6ESvICIxPKjUEMZZEU9ltGxzqBJVoih8a/FroEyBWlZfzzz4aXVZyNaMAyC
	9La9LmI+17ldXsl6a/y3kyTYqKL/cZNapTIw2LPM6q/wy5gL2QsDCvcUn9j/ctVVljkGDrKXRaHi5
	TfH/Cuho2a4sPJG5TJokTCxcQ7kEo9jTJd4l50Y0Xqlu9nNB4VHRyRk+HfMut+8xuzhLKkEQeoFQ+
	XCDvcYAdFDVs5l8uhQ3xvqLsp07BmYaJsSUEdBPmwdXs2TQFVu5oqW4HSI2Hu3x8jViJJsZmNt/Aa
	J9NVXu3SLdjCg4rTe1og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPU10-0005dq-Lj; Tue, 29 Oct 2019 16:06:38 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPU0y-0005dC-Br
 for linux-um@lists.infradead.org; Tue, 29 Oct 2019 16:06:37 +0000
Received: by mail-io1-xd41.google.com with SMTP id p6so15369312iod.7
 for <linux-um@lists.infradead.org>; Tue, 29 Oct 2019 09:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+utE3snHjXOyPjrpOKP0pRsXJnsUoGdnws0dyhZI7Bg=;
 b=tsaFlvuYOiErGpdimgffBwEkX/NogEExK2XUltwdHuRN+WKOhYVRAUJswAiM9TJdTk
 NjHyT7GLNzehciW/K39qjQhk206JwvZe0brs72bIvTa3l1MRtrZi8kpHdr+pDDC4PKst
 EVWcw+/sXy9JUL8ir4kNGinQhBZIUioEkL/HpONfId0psnTHHNRqgGEtFMy5BK2gc0cC
 txjVPiHwDXR1do1U4AfsUDtYmBU5uzSl1uCYpin6NNvZvqyOeamZux35ZPzWUpFEuCCv
 B+OAJIb2LjFd8by+EyTWyB8itIEE/ExR4xr4zxXeZAELIhUNFit2Q19JT/zbiudiA3dV
 W+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+utE3snHjXOyPjrpOKP0pRsXJnsUoGdnws0dyhZI7Bg=;
 b=jjy9MKkjdulNwtWwkV4LgUUJDISjHpZ3e28J+/ZUWwAoTxhG3faLnTMVskW6EY/d99
 M3ZiDui3nj5MEb2onJo9MPVLr5gUyz/7LKVFhgMiFjsXtvIyKNqcP7kab5ZbMDfixNxl
 WqW29J/CLRyVkqZlT+YfA455qNfoR9VYVA0YyksqxPmfewOz/7Mil2jjVEuWt+91r3tF
 l1rdujR2nlZDkNK10i4dOvQihpRw0Wvdgf6Z8djQxLfV/RAWX/GjILA0cBnwXzZmneaG
 NPnIJZI+OUKHJLwxzUUIv5LQPk0xSzgGmlDBVhzysgsesqGjnug7S4iJsqbkVW1Be35g
 0XgQ==
X-Gm-Message-State: APjAAAUM6k5RP4QxdJ209R67RBu5VQy6V8StEKRpWhxiUiEU5bicjzY/
 QGkLtmW0gH+Q5/Pz5kVmcTyisw==
X-Google-Smtp-Source: APXvYqz7VI797G+c4O/NejxfIo0ojnsG23gfPrsA93QxVEFq06d72OD6/cf42FH4xgAAyraA75tzJQ==
X-Received: by 2002:a6b:e015:: with SMTP id z21mr4473959iog.51.1572365194793; 
 Tue, 29 Oct 2019 09:06:34 -0700 (PDT)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id g79sm2035797ilf.14.2019.10.29.09.06.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 09:06:33 -0700 (PDT)
Subject: Re: [PATCH v2] um: Entrust re-queue to the upper layers
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
References: <20191029091334.3095-1-anton.ivanov@cambridgegreys.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <71002768-3887-5af1-5dd3-7e691aa3f656@kernel.dk>
Date: Tue, 29 Oct 2019 10:06:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029091334.3095-1-anton.ivanov@cambridgegreys.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_090636_430766_B7A40258 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: richard@nod.at, rrs@researchut.com, hch@lst.de, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 10/29/19 3:13 AM, Anton Ivanov wrote:
> Fixes crashes due to ubd requeue logic conflicting with the block-mq
> logic. Crash is reproducible in 5.0 - 5.3.
> 
> Fixes: 53766defb8c860a47e2a965f5b4b05ed2848e2d0
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

I can pick this one up, I'll fix up the Fixes and stable stuff too.

-- 
Jens Axboe


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
