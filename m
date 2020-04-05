Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C9519E96D
	for <lists+linux-um@lfdr.de>; Sun,  5 Apr 2020 06:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AVtMmc5/9vpUOjSdfZt3pkUo3rjX1c4A8m3LzPbFeqo=; b=i2s4MLQWl1OEN8
	voUuPQ0dxl/m/bBSsR6DBKwh3JZfF3zkSC1C1xinLLybLDJtLbnob/FB2MjnKQVvQZrjARxgixJj4
	dcYWADs9YA6z2KcrhEuDc4LOWjdUtHsQOO+5OJ3L++S1SEQ1o824GRl5luOPYlXs/++EZh9smcfWH
	fmOs1dDIuKWQACx1OaAwH+kAYtMr3r69m7H6ghx7poMlbSzwG6fuUS8Od2sIYgF5knYcWiJQwmO7Z
	/bUzIDTKNLRvTMgUhCE83fuzR7/I6Gz/bBwf5Z2dLhpF0DnJRHOhCbITPfOat3cuJSh30lxFFCNVd
	BZqBeWPvjekflb342kFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKxF0-00082M-VX; Sun, 05 Apr 2020 04:50:38 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKxEy-000825-AR
 for linux-um@lists.infradead.org; Sun, 05 Apr 2020 04:50:37 +0000
Received: by mail-pl1-x62d.google.com with SMTP id s23so4522985plq.13
 for <linux-um@lists.infradead.org>; Sat, 04 Apr 2020 21:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ocVif8EnATZ1JJsG6UsHG9QcTH4mo78MNGZYpRXNr8A=;
 b=bVGy768rDyNyBtqD2xw6By157HUkMKwsNCC6gTP/Hos2Z0FkNfr9zxH8MPJEqHeXta
 C9/81PHDdbBt5YeXAcLP9zGsjHmXzR5gIFwKW0qF/NzVWWv5StB3GRHRbO3WHD1kPK/Q
 zcpVAHODZ7oE86iJColw1BcSxVuiMPa7FysiBwf/fRhKZpirZyJWEio9LAMfyvUqUtOj
 bmBoX/YdJWuVdR4XxnVrbXU+Bh0XhhDLT+XRpsa/WONjFdQI2a4/ItBoQo6eSaoX2lOW
 OqrjIOXCBxgSveT/4J+tRDSc7SHVFtNlp/Rob0UvOHnEOMyO57T6Q9W629vKklPf4jVb
 xykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ocVif8EnATZ1JJsG6UsHG9QcTH4mo78MNGZYpRXNr8A=;
 b=aGEnwnOzLH4sr1+IB8QxObwi5S3WLYBEfdkdn9Zz9OGPzc+XwsFrXgyuYNCvzK9vgk
 aSLWK5Fne/pZi3frWNC7KAqwIx4ywBQ3KUDXtm0K0UTEhtDVk1Y8b5u4gGdWxn6UMjLW
 rNvtLm2MsOLYXp97PtMCieG7TYUX9Fexb9oTrvzBfnNXA8/fvzZxWl19Q7oVuEnMYqGj
 g3ThK2U+lnyCjSxOeSXqvwJr4FBFfDJt+zMY0BVSYjo+8ICyy/GMSehw0lxgzlEKqV13
 0B9sdVTfuHSkSnNjx2PJzW2HjKSkTJeT7J/NUwpgclMbwTxuDpiKc5JMFTpPn3tnwzkJ
 hwNw==
X-Gm-Message-State: AGi0PuZLL8VfJ3+CqBYXJlSUziABLN5Fa07GatOBbQYOHbbPvlJTCZCp
 iwquKMCg1GuJb/RIfmhzZN9r0DbsQFPOyg==
X-Google-Smtp-Source: APiQypLr5d8Glynj6xdDby74YcuhQEgr8nwrWBz+5dFOkhYKZY/LiAamtf5j8su4EFLe9hhRseFQwQ==
X-Received: by 2002:a17:90a:8cf:: with SMTP id
 15mr18778373pjn.76.1586062235057; 
 Sat, 04 Apr 2020 21:50:35 -0700 (PDT)
Received: from localhost (tk2-262-40541.vs.sakura.ne.jp. [160.16.240.45])
 by smtp.gmail.com with ESMTPSA id gi2sm9023491pjb.30.2020.04.04.21.50.33
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 21:50:34 -0700 (PDT)
Date: Sun, 5 Apr 2020 12:50:31 +0800
From: Lingyu Zhu <lynuszhu@gmail.com>
To: linux-um@lists.infradead.org
Subject: Clean up scripts/tags.sh
Message-ID: <20200405045030.sslbedviyt7zqwhi@lynus-laptop>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_215036_360736_B3D097D4 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lynuszhu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hello. Yesterday I asked on #kernelnewbies IRC channel whether um supports arch
other than x86, and I got the answer that um right now only works on x86.
I consider scripts/tags.sh needs a little cleaning up. First, this script fails
to collect files under arch/x86/um to produce tags. Second, it collect the
extra files from the arch/$SUBARCH, which I considered pointless. Since
um only works on x86, it's better to collect arch/x86/um for x86 um build,
and output error message for other cases.
Also, I wonder is it proper to send the scripts/tags.sh patch to this list?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
