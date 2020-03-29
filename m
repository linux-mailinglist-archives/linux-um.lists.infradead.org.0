Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BD819709F
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDBPCBcrZLDlZ6OJ+PV15cZMBH7QMFkeV7Nd2sAeUH4=; b=UYnw4fBKkHXQYa
	uefpqcxyxDaQa9SclrZ6SMqQGqkLdFAg0u4CqvXumWHdNKs3oGl0hU4pwBPTjDt7aM+T7UQ6GaeKV
	L+9j+HVP5OORIr7ijvIUfw5wQwlHnpZcCtgrGV1wJUh31BlpTVNTECL92fgoCrDue3stTAp28fGoi
	8Qac7QgsH6bnDHcipfwsD2c0Qa20pIrqBO8lhwkg6sO2OBncWyPx/hIDGXoJFdZ51aShdCNAjIuzU
	v6InRhQbGAnbbncz1hb7Wqygaw5/0NaojvPh5DHC7O0nJZXzfXLthm1R2jLTGaDqx9QLbRqgtRfH4
	wt+PX60cs5U56w0BzICg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfwB-0006eW-Sq; Sun, 29 Mar 2020 21:57:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfw8-0006dS-34
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:57:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id m11so13028260wrx.10
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AdH+2Sp8+LCQmdv9cJRBn8nCYFyRth49aJu0RLYZRyg=;
 b=SKXvn45UOfjWlUjmdFc0n9z3vSowX79jBA3X7UhZI5XH/zK/HEwfMUu/NXfMnDFyxA
 w4tU3AGaTG5epfNu5vCpUzfWHtl5ejAo2Fr9AySqHpzpMBKrIzE9spVaNICgkjLv0wPW
 ql37IRwlmz5m+kZPZ5aYPd1UwDjNQEpNOLt1P+0h+1zLJSpjt8mxtjn83Eq0jqJvwxNb
 alZuo48lb4PEuU/BHSDtkHMWNyyLYCnMItSTpXtntGEyz3XID8qpJ9IyD25An5QLWk/j
 gIN5Xn0Zi3lLoMdEkCW44GCTz6HRXNi0gVvULbWeKY5vLVzDW+gZYbZxJ1qiTfg4qNy2
 vhSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AdH+2Sp8+LCQmdv9cJRBn8nCYFyRth49aJu0RLYZRyg=;
 b=QfrQqSSZ7f/wENRRPY7RdyyFLmQMlviyXlQ/6OhKnM13API+6oO9IC/XaM1IUga/sx
 rW5kvfCERdULgY5gW/KbUeD1h6e7DHzxIPdOUnrCaiijP5Jn1/OgkOZXIu86JiWU0iCq
 WUR278qpZQkAiOMG0sh9vTSunbzoyBSkTA14zwOFZ2XezCQRhuf4faq2z7FvHABZZlWb
 sprYOEILP9AuS8IdP8dd3dyE11N+sTO0GQiiHhQxi/tyJ43mVLxJRhFYt5tjCSdInCdQ
 233Q1MH8Pc8MYlijrLn0DROmx07KpTnMYMtj7KgZuNeeUFHKEnzSTCV7J3w8TWHso2AM
 oOtA==
X-Gm-Message-State: ANhLgQ1D7LhKkHoMQ94YGgrgoW+p2PwpOfvLQYNCe8aNdEG/oyNX3dMl
 mWSxAqAixI3Jmq5ycvNOFQsPXzJksE+jBCobemQ=
X-Google-Smtp-Source: ADFU+vtvOe3EElWdk61gCrkYLK9KKQ5cxVkJkiKNS1Zdj/8ck13QHJe7rUazLAJhN6CPFy4vdlgjJJgZDpWQq9A85zI=
X-Received: by 2002:a5d:4885:: with SMTP id g5mr11055550wrq.93.1585519061682; 
 Sun, 29 Mar 2020 14:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200327193626.82329-1-alex.dewar@gmx.co.uk>
In-Reply-To: <20200327193626.82329-1-alex.dewar@gmx.co.uk>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:57:30 +0200
Message-ID: <CAFLxGvxy8Bc_rb_UKFhxRQ2ttVA1Rk-WqJ=_NYpCUXz2kaq3-A@mail.gmail.com>
Subject: Re: [PATCH] um: Remove some unnecessary NULL checks in vector_user.c
To: Alex Dewar <alex.dewar@gmx.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_145744_133989_5A924728 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 8:38 PM Alex Dewar <alex.dewar@gmx.co.uk> wrote:
>
> kfree() already checks for null pointers, so additional checking is
> unnecessary.
>
> Signed-off-by: Alex Dewar <alex.dewar@gmx.co.uk>

Applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
